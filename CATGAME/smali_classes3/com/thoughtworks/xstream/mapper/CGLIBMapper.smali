.class public Lcom/thoughtworks/xstream/mapper/CGLIBMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "CGLIBMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/mapper/CGLIBMapper$Marker;
    }
.end annotation


# static fields
.field private static DEFAULT_NAMING_MARKER:Ljava/lang/String;

.field static synthetic class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;


# instance fields
.field private final alias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "$$EnhancerByCGLIB$$"

    sput-object v0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 35
    const-string v0, "CGLIB-enhanced-proxy"

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "alias"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 40
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
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
.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.thoughtworks.xstream.mapper.CGLIBMapper$Marker"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 44
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "serializedName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 46
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 51
    invoke-static {p1}, Lnet/sf/cglib/proxy/Enhancer;->isEnhanced(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 49
    :goto_0
    return-object v2
.end method
