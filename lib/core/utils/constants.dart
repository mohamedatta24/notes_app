const String notesBox = 'notesBox';



String formattedDate =
    '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year} '
    '${DateTime.now().hour % 12 == 0 ? 12 : DateTime.now().hour % 12}:${DateTime.now().minute.toString().padLeft(2, '0')} '
    '${DateTime.now().hour >= 12 ? 'PM' : 'AM'}';
