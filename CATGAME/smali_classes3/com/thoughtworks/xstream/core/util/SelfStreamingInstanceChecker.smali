.class public Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;
.super Ljava/lang/Object;
.source "SelfStreamingInstanceChecker.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final self:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    .line 49
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 41
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 69
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

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    sget-object v1, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->class$java$lang$Object:Ljava/lang/Class;

    :cond_1
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p2, "Cannot marshal the XStream instance in action"

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
