.class public Lcom/opencsv/ResultSetHelperService;
.super Ljava/lang/Object;
.source "ResultSetHelperService.java"

# interfaces
.implements Lcom/opencsv/ResultSetHelper;


# static fields
.field protected static final CLOBBUFFERSIZE:I = 0x800

.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "dd-MMM-yyyy"

.field static final DEFAULT_TIMESTAMP_FORMAT:Ljava/lang/String; = "dd-MMM-yyyy HH:mm:ss"

.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""


# instance fields
.field private dateFormat:Ljava/lang/String;

.field private dateTimeFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dd-MMM-yyyy"

    .line 37
    iput-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    const-string v0, "dd-MMM-yyyy HH:mm:ss"

    .line 38
    iput-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method private getColumnValue(Ljava/sql/ResultSet;IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x10

    const-string v1, ""

    if-eq p2, v0, :cond_7

    const/16 v0, -0xf

    if-eq p2, v0, :cond_7

    const/16 v0, -0x9

    if-eq p2, v0, :cond_7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    const/16 v0, 0xc

    if-eq p2, v0, :cond_6

    const/16 v0, 0x10

    if-eq p2, v0, :cond_5

    const/16 v0, 0x7d5

    if-eq p2, v0, :cond_4

    const/16 v0, 0x7db

    if-eq p2, v0, :cond_3

    const/4 v0, -0x6

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 163
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 148
    :pswitch_0
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p2

    invoke-virtual {p0, p2, p6}, Lcom/opencsv/ResultSetHelperService;->handleTimestamp(Ljava/sql/Timestamp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 145
    :pswitch_1
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 142
    :pswitch_2
    invoke-direct {p0, p1, p3, p5}, Lcom/opencsv/ResultSetHelperService;->handleDate(Ljava/sql/ResultSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 131
    :pswitch_3
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 134
    :pswitch_4
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 128
    :pswitch_5
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 139
    :cond_2
    :pswitch_6
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 116
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/opencsv/ResultSetHelperService;->handleNClob(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 119
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/opencsv/ResultSetHelperService;->handleClob(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 113
    :cond_5
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 158
    :cond_6
    :pswitch_7
    invoke-direct {p0, p1, p3, p4}, Lcom/opencsv/ResultSetHelperService;->handleVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 153
    :cond_7
    invoke-direct {p0, p1, p3, p4}, Lcom/opencsv/ResultSetHelperService;->handleNVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;

    move-result-object p2

    .line 167
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-nez p1, :cond_9

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, p2

    :cond_9
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleClob(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    new-instance p2, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {p2}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    .line 211
    invoke-interface {p1}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/text/TextStringBuilder;->readFrom(Ljava/lang/Readable;)I

    .line 212
    invoke-virtual {p2}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private handleDate(Ljava/sql/ResultSet;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 198
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private handleNClob(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    new-instance p2, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {p2}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/text/TextStringBuilder;->readFrom(Ljava/lang/Readable;)I

    .line 223
    invoke-virtual {p2}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private handleNVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 187
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private handleVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 176
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 69
    invoke-interface {p1, v2}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getColumnValues(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/opencsv/ResultSetHelperService;->getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v10, v2, -0x1

    .line 89
    invoke-interface {v0, v2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v5

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/opencsv/ResultSetHelperService;->getColumnValue(Ljava/sql/ResultSet;IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected handleTimestamp(Ljava/sql/Timestamp;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method
