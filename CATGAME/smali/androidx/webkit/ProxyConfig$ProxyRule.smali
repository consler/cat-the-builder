.class public final Landroidx/webkit/ProxyConfig$ProxyRule;
.super Ljava/lang/Object;
.source "ProxyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/ProxyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyRule"
.end annotation


# instance fields
.field private mSchemeFilter:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "*"

    .line 129
    invoke-direct {p0, v0, p1}, Landroidx/webkit/ProxyConfig$ProxyRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Landroidx/webkit/ProxyConfig$ProxyRule;->mSchemeFilter:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Landroidx/webkit/ProxyConfig$ProxyRule;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSchemeFilter()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$ProxyRule;->mSchemeFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/webkit/ProxyConfig$ProxyRule;->mUrl:Ljava/lang/String;

    return-object v0
.end method
