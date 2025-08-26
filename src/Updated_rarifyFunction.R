# Updated_rarifyFunction.R
# This script rarifies bug counts to 110 from VDEQ's EDAS database
# R version 3.5.1
# Adapted from code by Lou Reynolds and Leah Ettema (US EPA Region III)

library(tidyverse)
library(lazyeval)

rarify <- function(
    bugdatlong,  # data.frame, with columns UID, finalID, count
    UID,         # string name of the sample‐ID column
    finalID,     # string name of the taxon column
    count        # string name of the count column
) {
  # total up counts per sample
  bugtotals <- bugdatlong %>%
    group_by_(UID) %>%
    summarise_(bugtotal = interp(~sum(v), v = as.name(count))) %>%
    select(UID, bugtotal) %>%
    left_join(bugdatlong, by = UID)

  # already ≤110
  rarified <- bugtotals %>%
    filter(bugtotal <= 110) %>%
    arrange_(UID) %>%
    mutate(SampleCount = bugtotal,
           Count       = .[[4]]) %>%
    select(UID, finalID, SampleCount, Count)

  # need rarification
  rarifyMe <- bugtotals %>%
    filter(bugtotal > 110) %>%
    arrange_(UID) %>%
    mutate_(count = count)

  if (nrow(rarifyMe) > 0) {
    for (s in seq_len(nrow(rarifyMe))) {
      reps <- rarifyMe$count[s] - 1
      if (reps > 0) {
        rarifyMe <- bind_rows(rarifyMe, rarifyMe[rep(s, reps), ])
      }
    }
    final <- rarifyMe %>%
      group_by_(UID) %>%
      select_(UID, finalID) %>%
      sample_n(110) %>%
      group_by_(UID, finalID) %>%
      summarise(Count = n()) %>%
      mutate(SampleCount = sum(Count)) %>%
      bind_rows(rarified)
  } else {
    final <- rarified
  }

  return(final)
}