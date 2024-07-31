.class public Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "ISO8601DateConverter.java"


# static fields
.field static synthetic class$java$util$Date:Ljava/lang/Class;

.field static synthetic class$java$util$GregorianCalendar:Ljava/lang/Class;


# instance fields
.field private final converter:Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 29
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->converter:Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 32
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
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 32
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->class$java$util$Date:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->converter:Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;

    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.util.GregorianCalendar"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->canConvert(Ljava/lang/Class;)Z

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
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->converter:Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 41
    .local v0, "calendar":Ljava/util/Calendar;
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601DateConverter;->converter:Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
