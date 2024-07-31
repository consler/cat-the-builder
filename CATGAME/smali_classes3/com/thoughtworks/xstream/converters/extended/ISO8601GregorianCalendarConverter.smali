.class public Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "ISO8601GregorianCalendarConverter.java"


# static fields
.field private static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field static synthetic class$java$util$GregorianCalendar:Ljava/lang/Class;


# instance fields
.field private final converter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "svConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.core.util.ISO8601JavaTimeConverter"

    goto :goto_0

    :cond_0
    const-string v1, "com.thoughtworks.xstream.core.util.ISO8601JodaTimeConverter"

    :goto_0
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "type":Ljava/lang/Class;
    :try_start_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sget-object v3, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 52
    :goto_1
    goto :goto_2

    .line 50
    :catch_0
    move-exception v2

    goto :goto_2

    .line 48
    :catch_1
    move-exception v2

    goto :goto_1

    .line 46
    :catch_2
    move-exception v2

    goto :goto_1

    .line 44
    :catch_3
    move-exception v2

    goto :goto_1

    .line 53
    :goto_2
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->converter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 54
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 57
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

    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->converter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.GregorianCalendar"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->class$java$util$GregorianCalendar:Ljava/lang/Class;

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
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->converter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ISO8601GregorianCalendarConverter;->converter:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
