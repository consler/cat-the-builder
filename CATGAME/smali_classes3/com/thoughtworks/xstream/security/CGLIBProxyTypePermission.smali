.class public Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;
.super Ljava/lang/Object;
.source "CGLIBProxyTypePermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# static fields
.field public static final PROXIES:Lcom/thoughtworks/xstream/security/TypePermission;

.field static synthetic class$com$thoughtworks$xstream$security$CGLIBProxyTypePermission:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$net$sf$cglib$proxy$Proxy:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->PROXIES:Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 25
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
.method public allows(Ljava/lang/Class;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 25
    if-eqz p1, :cond_3

    sget-object v0, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    invoke-static {p1}, Lnet/sf/cglib/proxy/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$net$sf$cglib$proxy$Proxy:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "net.sf.cglib.proxy.Proxy"

    invoke-static {v2}, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$net$sf$cglib$proxy$Proxy:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$com$thoughtworks$xstream$security$CGLIBProxyTypePermission:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.security.CGLIBProxyTypePermission"

    invoke-static {v1}, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->class$com$thoughtworks$xstream$security$CGLIBProxyTypePermission:Ljava/lang/Class;

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 30
    const/16 v0, 0x13

    return v0
.end method
