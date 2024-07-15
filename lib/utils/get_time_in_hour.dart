DateTime getTimeInHour(int timeStamp) =>
    DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
