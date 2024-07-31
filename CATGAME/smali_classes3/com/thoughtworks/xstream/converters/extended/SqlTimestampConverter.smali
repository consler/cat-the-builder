.class public Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "SqlTimestampConverter.java"


# static fields
.field static synthetic class$java$sql$Timestamp:Ljava/lang/Class;


# instance fields
.field private final format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;-><init>(Ljava/util/TimeZone;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 7
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 51
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 52
    new-instance v6, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;IIZ)V

    iput-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .line 53
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 56
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->class$java$sql$Timestamp:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.sql.Timestamp"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->class$java$sql$Timestamp:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 74
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 75
    .local v0, "idx":I
    const-string v1, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Ljava/sql/Timestamp;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-gez v0, :cond_2

    move-object v4, p1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    .line 80
    .local v2, "timestamp":Ljava/sql/Timestamp;
    if-lez v0, :cond_4

    .line 81
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "buffer":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    .line 83
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :cond_4
    return-object v2

    .line 91
    .end local v2    # "timestamp":Ljava/sql/Timestamp;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/text/ParseException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 88
    .end local v2    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 60
    move-object v0, p1

    check-cast v0, Ljava/sql/Timestamp;

    .line 61
    .local v0, "timestamp":Ljava/sql/Timestamp;
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    const v3, 0x3b9aca00

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "nanos":Ljava/lang/String;
    const/16 v3, 0xa

    .line 66
    .local v3, "last":I
    :goto_0
    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_0

    .line 67
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 70
    .end local v2    # "nanos":Ljava/lang/String;
    .end local v3    # "last":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
