.class public Lcom/huawei/agconnect/core/ServiceDiscovery;
.super Landroid/app/Service;
.source "ServiceDiscovery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
