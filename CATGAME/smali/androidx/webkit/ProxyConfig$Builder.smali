.class public final Landroidx/webkit/ProxyConfig$Builder;
.super Ljava/lang/Object;
.source "ProxyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/ProxyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBypassRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/ProxyConfig$ProxyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mBypassRules:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/ProxyConfig;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->getProxyRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    .line 179
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->getBypassRules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/ProxyConfig$Builder;->mBypassRules:Ljava/util/List;

    return-void
.end method

.method private bypassRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mBypassRules:Ljava/util/List;

    return-object v0
.end method

.method private proxyRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/ProxyConfig$ProxyRule;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addBypassRule(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mBypassRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDirect()Landroidx/webkit/ProxyConfig$Builder;
    .locals 1

    const-string v0, "*"

    .line 280
    invoke-virtual {p0, v0}, Landroidx/webkit/ProxyConfig$Builder;->addDirect(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDirect(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;
    .locals 3

    .line 269
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    new-instance v1, Landroidx/webkit/ProxyConfig$ProxyRule;

    const-string v2, "direct://"

    invoke-direct {v1, p1, v2}, Landroidx/webkit/ProxyConfig$ProxyRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProxyRule(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;
    .locals 2

    .line 223
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    new-instance v1, Landroidx/webkit/ProxyConfig$ProxyRule;

    invoke-direct {v1, p1}, Landroidx/webkit/ProxyConfig$ProxyRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProxyRule(Ljava/lang/String;Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;
    .locals 2

    .line 240
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$Builder;->mProxyRules:Ljava/util/List;

    new-instance v1, Landroidx/webkit/ProxyConfig$ProxyRule;

    invoke-direct {v1, p2, p1}, Landroidx/webkit/ProxyConfig$ProxyRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroidx/webkit/ProxyConfig;
    .locals 3

    .line 189
    new-instance v0, Landroidx/webkit/ProxyConfig;

    invoke-direct {p0}, Landroidx/webkit/ProxyConfig$Builder;->proxyRules()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Landroidx/webkit/ProxyConfig$Builder;->bypassRules()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/webkit/ProxyConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public bypassSimpleHostnames()Landroidx/webkit/ProxyConfig$Builder;
    .locals 1

    const-string v0, "<local>"

    .line 294
    invoke-virtual {p0, v0}, Landroidx/webkit/ProxyConfig$Builder;->addBypassRule(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeImplicitRules()Landroidx/webkit/ProxyConfig$Builder;
    .locals 1

    const-string v0, "<-loopback>"

    .line 316
    invoke-virtual {p0, v0}, Landroidx/webkit/ProxyConfig$Builder;->addBypassRule(Ljava/lang/String;)Landroidx/webkit/ProxyConfig$Builder;

    move-result-object v0

    return-object v0
.end method
