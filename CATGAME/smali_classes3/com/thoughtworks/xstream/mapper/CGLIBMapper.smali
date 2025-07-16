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
.field private static DEFAULT_NAMING_MARKER:Ljava/lang/String; = "$$EnhancerByCGLIB$$"

.field static synthetic class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;


# instance fields
.field private final alias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    const-string v0, "CGLIB-enhanced-proxy"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 40
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 55
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


# virtual methods
.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

    if-nez p1, :cond_1

    const-string p1, "com.thoughtworks.xstream.mapper.CGLIBMapper$Marker"

    invoke-static {p1}, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    invoke-static {p1}, Lnet/sf/cglib/proxy/Enhancer;->isEnhanced(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
