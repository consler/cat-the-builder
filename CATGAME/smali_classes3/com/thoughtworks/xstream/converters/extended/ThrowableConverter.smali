.class public Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;
.super Ljava/lang/Object;
.source "ThrowableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private getConverter()Lcom/thoughtworks/xstream/converters/Converter;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->class$java$lang$Object:Ljava/lang/Class;

    :cond_1
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    .line 53
    check-cast p1, Ljava/lang/Throwable;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 62
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
