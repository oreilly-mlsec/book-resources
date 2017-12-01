.class public Lcom/android/notification/util/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field static BUFFERSIZE:I

.field private static LogFlag:I

.field private static Tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x19000

    sput v0, Lcom/android/notification/util/Tool;->BUFFERSIZE:I

    .line 50
    const/4 v0, 0x3

    sput v0, Lcom/android/notification/util/Tool;->LogFlag:I

    .line 52
    const-string v0, "pencilsketch"

    sput-object v0, Lcom/android/notification/util/Tool;->Tag:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeStrToInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1472
    const/4 v1, 0x0

    .line 1473
    .local v1, "retInt":I
    invoke-static {p0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 1484
    .end local v1    # "retInt":I
    .local v2, "retInt":I
    :goto_0
    return v2

    .line 1475
    .end local v2    # "retInt":I
    .restart local v1    # "retInt":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1476
    const/4 v0, 0x0

    .local v0, "nI":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1483
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 1484
    .end local v1    # "retInt":I
    .restart local v2    # "retInt":I
    goto :goto_0

    .line 1477
    .end local v2    # "retInt":I
    .restart local v1    # "retInt":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    .line 1478
    :cond_2
    const-string p0, "0"

    .line 1479
    goto :goto_2

    .line 1476
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static ChangeStrToLong(Ljava/lang/String;)J
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1494
    const-wide/16 v1, 0x0

    .line 1495
    .local v1, "retInt":J
    invoke-static {p0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-wide v3, v1

    .line 1506
    .end local v1    # "retInt":J
    .local v3, "retInt":J
    :goto_0
    return-wide v3

    .line 1497
    .end local v3    # "retInt":J
    .restart local v1    # "retInt":J
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1498
    const/4 v0, 0x0

    .local v0, "nI":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 1505
    :goto_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v3, v1

    .line 1506
    .end local v1    # "retInt":J
    .restart local v3    # "retInt":J
    goto :goto_0

    .line 1499
    .end local v3    # "retInt":J
    .restart local v1    # "retInt":J
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_3

    .line 1500
    :cond_2
    const-string p0, "0"

    .line 1501
    goto :goto_2

    .line 1498
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static CompareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 1379
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1381
    const/4 v0, 0x0

    .line 1393
    :goto_0
    return v0

    .line 1383
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 1385
    const/4 v0, 0x1

    goto :goto_0

    .line 1387
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 1389
    const/4 v0, -0x1

    goto :goto_0

    .line 1393
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static DeleteFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1455
    invoke-static {p0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1458
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static GBK2Unicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    move-object p0, v0

    .line 225
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static IfAPKOk(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apkname"    # Ljava/lang/String;

    .prologue
    .line 1511
    const/4 v0, 0x0

    .line 1512
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 1523
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 1513
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1514
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 1515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    .line 1516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1515
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, "str":Ljava/lang/String;
    const-string v3, "apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1519
    const/4 v0, 0x1

    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    move v1, v0

    .line 1523
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public static JWDlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1340
    sget v6, Lcom/android/notification/util/Tool;->LogFlag:I

    if-eq v7, v6, :cond_0

    sget v6, Lcom/android/notification/util/Tool;->LogFlag:I

    if-nez v6, :cond_1

    .line 1341
    :cond_0
    sget-object v6, Lcom/android/notification/util/Tool;->Tag:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_1
    const/4 v6, 0x2

    sget v7, Lcom/android/notification/util/Tool;->LogFlag:I

    if-eq v6, v7, :cond_2

    sget v6, Lcom/android/notification/util/Tool;->LogFlag:I

    if-nez v6, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/notification/util/AppUtil;->hasSdcard()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1346
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->JWDLogFile:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v3, "logfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1348
    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->JWDLogFile:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/notification/util/AppUtil;->CreateDir(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1369
    .end local v3    # "logfile":Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 1354
    .restart local v3    # "logfile":Ljava/io/File;
    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1356
    .local v4, "outfile":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1360
    .local v5, "strDate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1361
    sget-object v7, Lcom/android/notification/util/Tool;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1360
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "logStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1363
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1364
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v2    # "logStr":Ljava/lang/String;
    .end local v3    # "logfile":Ljava/io/File;
    .end local v4    # "outfile":Ljava/io/FileOutputStream;
    .end local v5    # "strDate":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1366
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 18
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1408
    const/4 v15, 0x1

    sget v16, Lcom/android/notification/util/Tool;->LogFlag:I

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    sget v15, Lcom/android/notification/util/Tool;->LogFlag:I

    if-nez v15, :cond_1

    .line 1409
    :cond_0
    sget-object v15, Lcom/android/notification/util/Tool;->Tag:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    :cond_1
    const/4 v15, 0x2

    sget v16, Lcom/android/notification/util/Tool;->LogFlag:I

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    sget v15, Lcom/android/notification/util/Tool;->LogFlag:I

    if-nez v15, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/notification/util/AppUtil;->hasSdcard()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1414
    :try_start_0
    new-instance v8, Ljava/io/File;

    sget-object v15, Lcom/android/notification/configure/ConfigureFile;->JWDLogFile:Ljava/lang/String;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v8, "logfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 1416
    sget-object v15, Lcom/android/notification/configure/ConfigureFile;->JWDLogFile:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/notification/util/AppUtil;->CreateDir(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v15

    if-nez v15, :cond_4

    .line 1452
    .end local v8    # "logfile":Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 1422
    .restart local v8    # "logfile":Ljava/io/File;
    :cond_4
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    invoke-direct {v10, v8, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1424
    .local v10, "outfile":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1425
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v5

    .line 1426
    .local v5, "hour":I
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v9

    .line 1427
    .local v9, "min":I
    invoke-virtual {v2}, Ljava/util/Date;->getSeconds()I

    move-result v12

    .line 1429
    .local v12, "sec":I
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd  "

    invoke-direct {v3, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v3, "df":Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 1433
    .local v14, "strDate":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1434
    sget-object v16, Lcom/android/notification/util/Tool;->Tag:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1433
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1436
    .local v7, "logStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    .line 1437
    .local v11, "se":[Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1438
    .local v13, "sf":Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1439
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v15, v11

    if-lt v6, v15, :cond_5

    .line 1444
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1445
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 1446
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1447
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v5    # "hour":I
    .end local v6    # "i":I
    .end local v7    # "logStr":Ljava/lang/String;
    .end local v8    # "logfile":Ljava/io/File;
    .end local v9    # "min":I
    .end local v10    # "outfile":Ljava/io/FileOutputStream;
    .end local v11    # "se":[Ljava/lang/StackTraceElement;
    .end local v12    # "sec":I
    .end local v13    # "sf":Ljava/lang/StringBuffer;
    .end local v14    # "strDate":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1449
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1440
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "date":Ljava/util/Date;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    .restart local v5    # "hour":I
    .restart local v6    # "i":I
    .restart local v7    # "logStr":Ljava/lang/String;
    .restart local v8    # "logfile":Ljava/io/File;
    .restart local v9    # "min":I
    .restart local v10    # "outfile":Ljava/io/FileOutputStream;
    .restart local v11    # "se":[Ljava/lang/StackTraceElement;
    .restart local v12    # "sec":I
    .restart local v13    # "sf":Ljava/lang/StringBuffer;
    .restart local v14    # "strDate":Ljava/lang/String;
    :cond_5
    :try_start_1
    aget-object v15, v11, v6

    invoke-virtual {v15}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1441
    const-string v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1439
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static MyHttpPostHashMap(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1271
    .local p1, "paraMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v6, "retstr":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1274
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1276
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v7, "urlParam":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1281
    .local v1, "hset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1291
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 1292
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x7d0

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1294
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1295
    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1297
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 1298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1301
    :cond_0
    return-object v6

    .line 1282
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1284
    .local v0, "hsKey":Ljava/lang/String;
    const-string v9, "jwd"

    .line 1285
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "class:Tool  func:MyHttpPostHashMap  text: hsKey:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1286
    const-string v10, "   hsvalue:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1285
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1284
    invoke-static {v9, v8}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1288
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v0, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v4, "retstr":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1320
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 1321
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/16 v5, 0xbb8

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1322
    const/16 v5, 0x7d0

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1324
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1325
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 1326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1328
    :cond_0
    return-object v4
.end method

.method public static ReadDownPropertie(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "Ps"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1147
    new-instance v4, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1151
    .local v2, "ps":Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v3, "tempfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v5, v4

    .line 1171
    .end local v2    # "ps":Ljava/util/Properties;
    .end local v3    # "tempfile":Ljava/io/File;
    .end local v4    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 1159
    .end local v5    # "value":Ljava/lang/Object;
    .restart local v2    # "ps":Ljava/util/Properties;
    .restart local v3    # "tempfile":Ljava/io/File;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1160
    .local v1, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1161
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1163
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v1    # "inputfile":Ljava/io/FileInputStream;
    .end local v2    # "ps":Ljava/util/Properties;
    .end local v3    # "tempfile":Ljava/io/File;
    :goto_1
    move-object v5, v4

    .line 1171
    .restart local v5    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1164
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1167
    const-string v6, "jwd"

    .line 1168
    const-string v7, "class:Tool  func:ReadPropertie  text:message:"

    .line 1167
    invoke-static {v6, v7, v0}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static SDCardTest()V
    .locals 10

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "sDStateString":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 150
    .local v0, "SDFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 152
    const-string v9, "Android/data/com.android.system/test.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "myFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 158
    :cond_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 159
    .local v5, "prop":Ljava/util/Properties;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 160
    const-string v8, "t.3"

    const-string v9, "comlepme ythe one!"

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v7, "Hello, World!"

    .line 163
    .local v7, "szOutText":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 165
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .end local v0    # "SDFile":Ljava/io/File;
    .end local v3    # "myFile":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v5    # "prop":Ljava/util/Properties;
    .end local v7    # "szOutText":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    const-string v8, "mounted_ro"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 179
    .restart local v0    # "SDFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 180
    const-string v9, "MyFile.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 179
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v3    # "myFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 188
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 189
    .local v1, "buffer":[B
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 190
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 192
    .end local v1    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 166
    .end local v0    # "SDFile":Ljava/io/File;
    .end local v3    # "myFile":Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static ToDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 923
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 931
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 924
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_2

    .line 925
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 923
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    :cond_2
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_1

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_1

    .line 929
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method public static ToSBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 910
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 918
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 911
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 912
    const/16 v2, 0x3000

    aput-char v2, v0, v1

    .line 910
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    :cond_2
    aget-char v2, v0, v1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 916
    aget-char v2, v0, v1

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method public static TrimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 999
    if-nez p0, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static UTF82GBK(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    move-object p0, v0

    .line 245
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 242
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static Unicode2GBK(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    move-object p0, v0

    .line 235
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static UpdateDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "Ps"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "ifupdate":Z
    invoke-virtual {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "oldvalue":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1128
    const/4 v0, 0x1

    .line 1132
    .end local v1    # "oldvalue":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1133
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1135
    :cond_1
    return v0
.end method

.method public static UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1184
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/notification/util/Tool;->WritePropertieEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1185
    return-void
.end method

.method public static WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "Ps"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-static {p2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1061
    :cond_0
    return-void
.end method

.method public static WriteDownPropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1088
    .local v2, "ps":Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v3, "tempfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1092
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1096
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1097
    .local v0, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1101
    invoke-virtual {v2, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1104
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1106
    .local v1, "outputFile":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1107
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1108
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1110
    return-void
.end method

.method public static WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1197
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/notification/util/Tool;->WritePropertieEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    return-void
.end method

.method private static WritePropertieEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 1214
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 1215
    .local v4, "ps":Ljava/util/Properties;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v5, "tempfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1219
    if-eqz p3, :cond_2

    .line 1220
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1227
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1228
    .local v2, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1232
    const/4 v1, 0x0

    .line 1233
    .local v1, "ifwrite":Z
    if-eqz p3, :cond_3

    .line 1234
    const/4 v1, 0x1

    .line 1239
    :goto_0
    if-eqz v1, :cond_1

    .line 1240
    invoke-virtual {v4, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1243
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1244
    .local v3, "outputFile":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1247
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1248
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1256
    .end local v1    # "ifwrite":Z
    .end local v2    # "inputfile":Ljava/io/FileInputStream;
    .end local v3    # "outputFile":Ljava/io/FileOutputStream;
    .end local v4    # "ps":Ljava/util/Properties;
    .end local v5    # "tempfile":Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 1236
    .restart local v1    # "ifwrite":Z
    .restart local v2    # "inputfile":Ljava/io/FileInputStream;
    .restart local v4    # "ps":Ljava/util/Properties;
    .restart local v5    # "tempfile":Ljava/io/File;
    :cond_3
    invoke-virtual {v4, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1249
    .end local v1    # "ifwrite":Z
    .end local v2    # "inputfile":Ljava/io/FileInputStream;
    .end local v4    # "ps":Ljava/util/Properties;
    .end local v5    # "tempfile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1253
    const-string v6, "jwd"

    .line 1254
    const-string v7, "class:Tool  func:WritePropertieEx  text:message:"

    .line 1253
    invoke-static {v6, v7, v0}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static base64Decoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ss"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, ""

    return-object v0
.end method

.method public static base64Encoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ss"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, ""

    return-object v0
.end method

.method public static checkNum(Ljava/lang/String;)I
    .locals 8
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 335
    const-string v4, "0123456789"

    .line 337
    .local v4, "strNum":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v5

    .line 341
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 342
    .local v3, "len":I
    if-eqz v3, :cond_0

    .line 346
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 354
    const/4 v5, 0x1

    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 349
    .local v0, "check":I
    if-eq v0, v6, :cond_0

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 356
    .end local v0    # "check":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v5, v6

    .line 357
    goto :goto_0
.end method

.method public static converStrToUtilDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 766
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 767
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 769
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method public static convertObjectToLong(Ljava/lang/Object;)J
    .locals 5
    .param p0, "objNull"    # Ljava/lang/Object;

    .prologue
    .line 659
    const-wide/16 v0, 0x0

    .line 661
    .local v0, "backStr":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "objToStr":Ljava/lang/String;
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 663
    const-wide/16 v0, 0x0

    .line 670
    .end local v3    # "objToStr":Ljava/lang/String;
    :goto_0
    return-wide v0

    .line 665
    .restart local v3    # "objToStr":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 667
    .end local v3    # "objToStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 668
    .local v2, "ex":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static convertObjectToStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "objNull"    # Ljava/lang/Object;

    .prologue
    .line 637
    const-string v0, ""

    .line 639
    .local v0, "backStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "objToStr":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v2    # "objToStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 643
    .restart local v2    # "objToStr":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 645
    .end local v2    # "objToStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "ex":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0
.end method

.method public static convertStrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "objNull"    # Ljava/lang/String;

    .prologue
    .line 615
    const-string v0, ""

    .line 617
    .local v0, "backStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "objToStr":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v2    # "objToStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 621
    .restart local v2    # "objToStr":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 623
    .end local v2    # "objToStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 624
    .local v1, "ex":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0
.end method

.method public static convertStrToDouble(Ljava/lang/String;)D
    .locals 3
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 597
    const-wide/16 v0, 0x0

    .line 599
    .local v0, "backFloat":D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 604
    :goto_0
    return-wide v0

    .line 600
    :catch_0
    move-exception v2

    .line 602
    .local v2, "ex":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static convertStrToFloat(Ljava/lang/String;)F
    .locals 2
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "backFloat":F
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 588
    :goto_0
    return v0

    .line 584
    :catch_0
    move-exception v1

    .line 586
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertStrToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, "backInt":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 572
    :goto_0
    return v0

    .line 568
    :catch_0
    move-exception v1

    .line 570
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateRondom(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 681
    const-string v2, ""

    .line 682
    .local v2, "sRand":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 683
    .local v1, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 686
    return-object v2

    .line 684
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static generateRondomChar(I)Ljava/lang/String;
    .locals 7
    .param p0, "length"    # I

    .prologue
    .line 692
    const-string v1, ""

    .line 693
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 698
    return-object v1

    .line 694
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x403a000000000000L    # 26.0

    mul-double/2addr v3, v5

    const-wide v5, 0x4058400000000000L    # 97.0

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getByteArrayFromStream(Ljava/io/InputStream;)[B
    .locals 8
    .param p0, "aIs"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v5

    .line 66
    :cond_1
    sget v6, Lcom/android/notification/util/Tool;->BUFFERSIZE:I

    new-array v1, v6, [B

    .line 67
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 71
    .local v3, "len":I
    :cond_2
    :try_start_0
    sget v6, Lcom/android/notification/util/Tool;->BUFFERSIZE:I

    sub-int/2addr v6, v3

    invoke-virtual {p0, v1, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 72
    .local v0, "bLen":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 90
    .end local v0    # "bLen":I
    :goto_1
    if-lez v3, :cond_0

    .line 94
    new-array v4, v3, [B

    .line 96
    .local v4, "result":[B
    invoke-static {v1, v7, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 98
    check-cast v1, [B

    move-object v5, v4

    .line 100
    goto :goto_0

    .line 75
    .end local v4    # "result":[B
    .restart local v0    # "bLen":I
    :cond_3
    add-int/2addr v3, v0

    .line 76
    :try_start_1
    sget v6, Lcom/android/notification/util/Tool;->BUFFERSIZE:I

    if-lt v3, v6, :cond_2

    .line 79
    const-string v6, "buffer out!!!!!!!!!!!"

    invoke-static {v6}, Lcom/android/notification/util/Tool;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 84
    .end local v0    # "bLen":I
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getClassFile(Ljava/lang/Class;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/android/notification/util/Tool;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/notification/util/Tool;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 846
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    const-string v3, ".classs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 849
    .local v1, "path":Ljava/net/URL;
    if-nez v1, :cond_0

    .line 850
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[.]"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 853
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getClassPathFile(Ljava/lang/Class;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/android/notification/util/Tool;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/notification/util/Tool;>;"
    invoke-static {p0}, Lcom/android/notification/util/Tool;->getClassFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v1

    .line 864
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[.]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    .local v0, "count":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 866
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".JAR!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 869
    :cond_0
    return-object v1

    .line 865
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getCurDateTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 1012
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static getCurrentMonth(Ljava/lang/String;I)Ljava/util/Date;
    .locals 5
    .param p0, "dateformat"    # Ljava/lang/String;
    .param p1, "day"    # I

    .prologue
    .line 551
    invoke-static {p0}, Lcom/android/notification/util/Tool;->getCurrentTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 552
    .local v2, "now":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 553
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 554
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/Calendar;->set(III)V

    .line 555
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 556
    .local v1, "currentTime":Ljava/util/Date;
    return-object v1
.end method

.method public static getCurrentTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "dateformat"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 535
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "now":Ljava/lang/String;
    const/4 v0, 0x0

    .line 538
    .local v0, "currentDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 799
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 807
    .local v2, "ps":Ljava/util/Properties;
    const-class v4, Lcom/android/notification/util/Tool;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 808
    invoke-virtual {v4, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 809
    .local v1, "inputFile":Ljava/io/InputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 810
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 818
    .end local v1    # "inputFile":Ljava/io/InputStream;
    .end local v2    # "ps":Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 812
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move-object v2, v3

    .line 815
    goto :goto_0

    .line 816
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move-object v2, v3

    .line 818
    goto :goto_0
.end method

.method public static getSixRandomNum()Ljava/lang/String;
    .locals 6

    .prologue
    .line 984
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 985
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 988
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 986
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSqlDateTypeDateAndTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 459
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 460
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 459
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 463
    .local v3, "utilDate":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 464
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v2, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 469
    .end local v1    # "pos":Ljava/text/ParsePosition;
    :goto_0
    return-object v3

    .line 465
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSqlDateTypeTime(Ljava/lang/String;)Ljava/sql/Date;
    .locals 6
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 446
    .local v2, "utilDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 451
    :goto_0
    new-instance v3, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object v3

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStartNoByPageNo(II)I
    .locals 2
    .param p0, "pageNo"    # I
    .param p1, "countNo"    # I

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "startNo":I
    add-int/lit8 v1, p0, -0x1

    mul-int v0, v1, p1

    .line 836
    return v0
.end method

.method public static getStringDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "strDate"    # Ljava/util/Date;

    .prologue
    .line 516
    const-string v1, ""

    .line 518
    .local v1, "stringDate":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/notification/util/Tool;->isStrNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 526
    :cond_0
    :goto_0
    return-object v1

    .line 522
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringSeq(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "length"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 710
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, p0, :cond_0

    .line 711
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, p0, v4

    .local v2, "j":I
    :goto_0
    if-lt v1, v2, :cond_1

    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_0
    move-object v3, p1

    .line 718
    .end local p1    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 712
    .end local v3    # "str":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "i":I
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, p1

    .line 718
    .end local p1    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getSuffixTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "dynamicTime"    # Ljava/lang/String;

    .prologue
    .line 1023
    const-string v1, "_"

    .line 1024
    .local v1, "retTime":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v2, "sf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {p0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    const-string v1, " "

    .line 1043
    :goto_0
    return-object v1

    .line 1031
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, "strDate":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1033
    const-string v1, " "

    goto :goto_0

    .line 1035
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1036
    const/4 v5, 0x5

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1035
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1039
    .end local v3    # "strDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSysDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 283
    const-string v1, "yyyyMMdd"

    .line 282
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSysDateNew()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 296
    const-string v1, "yyyy-MM-dd"

    .line 295
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSysTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 270
    const-string v1, "yyyyMMddHHmmss"

    .line 269
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSysTimeMS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 257
    const-string v1, "yyyyMMddHHmmssSSSZ"

    .line 256
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-static/range {p0 .. p0}, Lcom/android/notification/util/Tool;->convertObjectToLong(Ljava/lang/Object;)J

    move-result-wide v13

    .line 734
    .local v13, "ms":J
    const/16 v18, 0x3e8

    .line 735
    .local v18, "ss":I
    mul-int/lit8 v8, v18, 0x3c

    .line 736
    .local v8, "mi":I
    mul-int/lit8 v5, v8, 0x3c

    .line 737
    .local v5, "hh":I
    mul-int/lit8 v4, v5, 0x18

    .line 739
    .local v4, "dd":I
    int-to-long v0, v4

    move-wide/from16 v19, v0

    div-long v2, v13, v19

    .line 740
    .local v2, "day":J
    int-to-long v0, v4

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, v13, v19

    int-to-long v0, v5

    move-wide/from16 v21, v0

    div-long v6, v19, v21

    .line 741
    .local v6, "hour":J
    int-to-long v0, v4

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, v13, v19

    int-to-long v0, v5

    move-wide/from16 v21, v0

    mul-long v21, v21, v6

    sub-long v19, v19, v21

    int-to-long v0, v8

    move-wide/from16 v21, v0

    div-long v11, v19, v21

    .line 742
    .local v11, "minute":J
    int-to-long v0, v4

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, v13, v19

    int-to-long v0, v5

    move-wide/from16 v21, v0

    mul-long v21, v21, v6

    sub-long v19, v19, v21

    int-to-long v0, v8

    move-wide/from16 v21, v0

    mul-long v21, v21, v11

    sub-long v19, v19, v21

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    div-long v16, v19, v21

    .line 743
    .local v16, "second":J
    int-to-long v0, v4

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, v13, v19

    int-to-long v0, v5

    move-wide/from16 v21, v0

    mul-long v21, v21, v6

    sub-long v19, v19, v21

    int-to-long v0, v8

    move-wide/from16 v21, v0

    mul-long v21, v21, v11

    sub-long v19, v19, v21

    .line 744
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v21, v21, v16

    .line 743
    sub-long v9, v19, v21

    .line 746
    .local v9, "milliSecond":J
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 747
    .local v15, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v19, 0x0

    cmp-long v19, v2, v19

    if-eqz v19, :cond_0

    .line 748
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    :cond_0
    const-wide/16 v19, 0x0

    cmp-long v19, v6, v19

    if-eqz v19, :cond_1

    .line 751
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "h"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    :cond_1
    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-eqz v19, :cond_2

    .line 754
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "m"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    :cond_2
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-eqz v19, :cond_3

    .line 757
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "s"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    :cond_3
    const-wide/16 v19, 0x0

    cmp-long v19, v9, v19

    if-eqz v19, :cond_4

    .line 760
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "ss"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19
.end method

.method public static getTimeDifference(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 372
    const-wide/16 v3, 0x0

    .line 373
    .local v3, "between":J
    const-string v12, ""

    .line 374
    .local v12, "re":Ljava/lang/String;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    .line 377
    .local v16, "systemTime":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, "dfs":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 380
    .local v2, "begin":Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 381
    .local v7, "end":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    div-long v3, v17, v19

    .line 383
    const-wide/16 v17, 0xe10

    div-long v8, v3, v17

    .line 384
    .local v8, "hour1":J
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-lez v17, :cond_1

    .line 385
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0xa

    cmp-long v17, v8, v19

    if-gez v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 389
    :goto_1
    const-wide/16 v17, 0xe10

    rem-long v17, v3, v17

    const-wide/16 v19, 0x3c

    div-long v10, v17, v19

    .line 390
    .local v10, "minute1":J
    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-lez v17, :cond_3

    .line 391
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0xa

    cmp-long v17, v10, v19

    if-gez v17, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 395
    :goto_3
    const-wide/16 v17, 0x3c

    rem-long v14, v3, v17

    .line 396
    .local v14, "second1":J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_5

    .line 397
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0xa

    cmp-long v17, v14, v19

    if-gez v17, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 405
    .end local v2    # "begin":Ljava/util/Date;
    .end local v7    # "end":Ljava/util/Date;
    .end local v8    # "hour1":J
    .end local v10    # "minute1":J
    .end local v14    # "second1":J
    :goto_5
    return-object v12

    .line 385
    .restart local v2    # "begin":Ljava/util/Date;
    .restart local v7    # "end":Ljava/util/Date;
    .restart local v8    # "hour1":J
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_0

    .line 387
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "00:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 391
    .restart local v10    # "minute1":J
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_2

    .line 393
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "00:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 397
    .restart local v14    # "second1":J
    :cond_4
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_4

    .line 399
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "00"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_5

    .line 401
    .end local v2    # "begin":Ljava/util/Date;
    .end local v7    # "end":Ljava/util/Date;
    .end local v8    # "hour1":J
    .end local v10    # "minute1":J
    .end local v14    # "second1":J
    :catch_0
    move-exception v6

    .line 402
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public static getTimeDifferenceMs(Ljava/lang/String;)J
    .locals 12
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 420
    const-wide/16 v1, 0x0

    .line 422
    .local v1, "between":J
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 423
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "systemTime":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 427
    .local v3, "dfs":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 428
    .local v0, "begin":Ljava/util/Date;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 429
    .local v5, "end":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v1, v8, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0    # "begin":Ljava/util/Date;
    .end local v5    # "end":Ljava/util/Date;
    :goto_0
    return-wide v1

    .line 431
    :catch_0
    move-exception v4

    .line 432
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUtilDateTypeTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd "

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 480
    .local v3, "utilDate":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 481
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v2, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 485
    .end local v1    # "pos":Ljava/text/ParsePosition;
    :goto_0
    return-object v3

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUtilDateTypeTime2(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 494
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 493
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 497
    .local v3, "utilDate":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 498
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v2, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 502
    .end local v1    # "pos":Ljava/text/ParsePosition;
    :goto_0
    return-object v3

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 779
    const-string v2, "[\\u3400-\\u9FBF]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 780
    .local v0, "pattern":Ljava/util/regex/Pattern;
    if-nez p0, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v1

    .line 783
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStrEmpty(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/Object;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/android/notification/util/Tool;->convertObjectToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "objString":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStrNotEmpty(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/Object;

    .prologue
    .line 210
    invoke-static {p0}, Lcom/android/notification/util/Tool;->convertObjectToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "objString":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is_Chinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 936
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 938
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 940
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 942
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 944
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 946
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 948
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 950
    :cond_0
    const/4 v1, 0x1

    .line 954
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is_Chinese(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 968
    .local v1, "ch":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 979
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 970
    :cond_0
    aget-char v0, v1, v2

    .line 972
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/notification/util/Tool;->is_Chinese(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 974
    const/4 v3, 0x1

    goto :goto_1

    .line 968
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static loadProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 8
    .param p0, "URL"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v5, Lcom/android/notification/util/Tool;

    invoke-virtual {v5, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 125
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 127
    .local v3, "prop":Ljava/util/Properties;
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v3    # "prop":Ljava/util/Properties;
    .local v4, "prop":Ljava/util/Properties;
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 138
    .end local v4    # "prop":Ljava/util/Properties;
    .restart local v3    # "prop":Ljava/util/Properties;
    :goto_0
    return-object v3

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Not Found......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "InputStream closed exception......"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 133
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 137
    :goto_3
    throw v5

    .line 134
    :catch_2
    move-exception v1

    .line 135
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v6, "InputStream closed exception......"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 134
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "prop":Ljava/util/Properties;
    .restart local v4    # "prop":Ljava/util/Properties;
    :catch_3
    move-exception v1

    .line 135
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v5, "InputStream closed exception......"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "prop":Ljava/util/Properties;
    .restart local v3    # "prop":Ljava/util/Properties;
    goto :goto_0

    .line 131
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "prop":Ljava/util/Properties;
    .restart local v4    # "prop":Ljava/util/Properties;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "prop":Ljava/util/Properties;
    .restart local v3    # "prop":Ljava/util/Properties;
    goto :goto_2

    .line 129
    .end local v3    # "prop":Ljava/util/Properties;
    .restart local v4    # "prop":Ljava/util/Properties;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "prop":Ljava/util/Properties;
    .restart local v3    # "prop":Ljava/util/Properties;
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 876
    :try_start_0
    const-class v3, Lcom/android/notification/util/Tool;

    invoke-static {v3}, Lcom/android/notification/util/Tool;->getClassPathFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 877
    const-string v4, "UTF-8"

    .line 875
    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    const-string v3, "/pro_config.properties"

    invoke-static {v3}, Lcom/android/notification/util/Tool;->loadProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 885
    .local v1, "pross":Ljava/util/Properties;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pross=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "bill_url"

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    const-string v3, "2011-09-09"

    invoke-static {v3}, Lcom/android/notification/util/Tool;->getSuffixTableName(Ljava/lang/String;)Ljava/lang/String;

    .line 906
    return-void

    .line 879
    .end local v1    # "pross":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static println(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "wudi0715"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
