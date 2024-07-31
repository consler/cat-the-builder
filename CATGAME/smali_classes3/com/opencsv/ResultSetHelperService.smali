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

    .line 37
    const-string v0, "dd-MMM-yyyy"

    iput-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    .line 38
    const-string v0, "dd-MMM-yyyy HH:mm:ss"

    iput-object v0, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private getColumnValue(Ljava/sql/ResultSet;IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colType"    # I
    .param p3, "colIndex"    # I
    .param p4, "trim"    # Z
    .param p5, "dateFormatString"    # Ljava/lang/String;
    .param p6, "timestampFormatString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/16 v0, -0x10

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

    const-string v0, ""

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 163
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 148
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_0
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lcom/opencsv/ResultSetHelperService;->handleTimestamp(Ljava/sql/Timestamp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 145
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 142
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p1, p3, p5}, Lcom/opencsv/ResultSetHelperService;->handleDate(Ljava/sql/ResultSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 131
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_3
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 134
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_4
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_5
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 122
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 123
    .local v0, "d":Ljava/math/BigDecimal;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "value":Ljava/lang/String;
    move-object v0, v1

    goto :goto_1

    .line 139
    .end local v0    # "d":Ljava/math/BigDecimal;
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    :pswitch_6
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "value":Ljava/lang/String;
    goto :goto_1

    .line 116
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/opencsv/ResultSetHelperService;->handleNClob(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 119
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/opencsv/ResultSetHelperService;->handleClob(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 113
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 158
    .end local v0    # "value":Ljava/lang/String;
    :cond_6
    :pswitch_7
    invoke-direct {p0, p1, p3, p4}, Lcom/opencsv/ResultSetHelperService;->handleVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 153
    .end local v0    # "value":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p1, p3, p4}, Lcom/opencsv/ResultSetHelperService;->handleNVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "value":Ljava/lang/String;
    nop

    .line 167
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v0, :cond_9

    .line 168
    :cond_8
    const-string v0, ""

    .line 171
    :cond_9
    return-object v0

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
    .locals 4
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const-string v0, ""

    .line 208
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object v1

    .line 209
    .local v1, "c":Ljava/sql/Clob;
    if-eqz v1, :cond_0

    .line 210
    new-instance v2, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v2}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    .line 211
    .local v2, "sb":Lorg/apache/commons/text/TextStringBuilder;
    invoke-interface {v1}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/text/TextStringBuilder;->readFrom(Ljava/lang/Readable;)I

    .line 212
    invoke-virtual {v2}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .end local v2    # "sb":Lorg/apache/commons/text/TextStringBuilder;
    :cond_0
    return-object v0
.end method

.method private handleDate(Ljava/sql/ResultSet;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colIndex"    # I
    .param p3, "dateFormatString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    const-string v0, ""

    .line 198
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v1

    .line 199
    .local v1, "date":Ljava/sql/Date;
    if-eqz v1, :cond_0

    .line 200
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_0
    return-object v0
.end method

.method private handleNClob(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .locals 4
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const-string v0, ""

    .line 219
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v1

    .line 220
    .local v1, "nc":Ljava/sql/NClob;
    if-eqz v1, :cond_0

    .line 221
    new-instance v2, Lorg/apache/commons/text/TextStringBuilder;

    invoke-direct {v2}, Lorg/apache/commons/text/TextStringBuilder;-><init>()V

    .line 222
    .local v2, "sb":Lorg/apache/commons/text/TextStringBuilder;
    invoke-interface {v1}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/text/TextStringBuilder;->readFrom(Ljava/lang/Readable;)I

    .line 223
    invoke-virtual {v2}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .end local v2    # "sb":Lorg/apache/commons/text/TextStringBuilder;
    :cond_0
    return-object v0
.end method

.method private handleNVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colIndex"    # I
    .param p3, "trim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 187
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "nColumnValue":Ljava/lang/String;
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 193
    .restart local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private handleVarChar(Ljava/sql/ResultSet;IZ)Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "colIndex"    # I
    .param p3, "trim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 176
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "columnValue":Ljava/lang/String;
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 182
    .restart local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 4
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 67
    .local v0, "metadata":Ljava/sql/ResultSetMetaData;
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 68
    .local v1, "nameArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 69
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v3}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getColumnValues(Ljava/sql/ResultSet;)[Ljava/lang/String;
    .locals 3
    .param p1, "rs"    # Ljava/sql/ResultSet;
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

    move-result-object v0

    return-object v0
.end method

.method public getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "trim"    # Z
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

    move-result-object v0

    return-object v0
.end method

.method public getColumnValues(Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "trim"    # Z
    .param p3, "dateFormatString"    # Ljava/lang/String;
    .param p4, "timeFormatString"    # Ljava/lang/String;
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
    .local v0, "metadata":Ljava/sql/ResultSetMetaData;
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 88
    .local v1, "valueArray":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 89
    add-int/lit8 v10, v2, -0x1

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

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method protected handleTimestamp(Ljava/sql/Timestamp;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "timestamp"    # Ljava/sql/Timestamp;
    .param p2, "timestampFormatString"    # Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "timeFormat":Ljava/text/SimpleDateFormat;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/opencsv/ResultSetHelperService;->dateFormat:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTimeFormat"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/opencsv/ResultSetHelperService;->dateTimeFormat:Ljava/lang/String;

    .line 62
    return-void
.end method
