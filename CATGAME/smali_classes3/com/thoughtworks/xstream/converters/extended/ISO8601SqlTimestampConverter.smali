.class public Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;
.super Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;
.source "ISO8601SqlTimestampConverter.java"


# static fields
.field private static final PADDING:Ljava/lang/String; = "000000000"

.field static synthetic class$java$sql$Timestamp:Ljava/lang/Class;

.field static synthetic class$java$util$Date:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 30
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

    .line 30
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;->class$java$sql$Timestamp:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.sql.Timestamp"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;->class$java$sql$Timestamp:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601SqlTimestampConverter;->class$java$util$Date:Ljava/lang/Class;

    :cond_1
    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->canConvert(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 34
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 35
    .local v0, "idxFraction":I
    const/4 v1, 0x0

    .line 36
    .local v1, "nanos":I
    if-lez v0, :cond_1

    .line 38
    add-int/lit8 v2, v0, 0x1

    .local v2, "idx":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    .end local v2    # "idx":I
    :cond_1
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 44
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    .line 45
    .local v3, "timestamp":Ljava/sql/Timestamp;
    invoke-virtual {v3, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 46
    return-object v3
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/sql/Timestamp;

    .line 51
    .local v0, "timestamp":Ljava/sql/Timestamp;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-super {p0, v1}, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "nanos":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 54
    .local v3, "idxFraction":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "000000000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0x4

    .line 57
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    return-object v1
.end method
