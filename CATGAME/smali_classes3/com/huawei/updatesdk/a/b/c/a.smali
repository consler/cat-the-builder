.class public abstract Lcom/huawei/updatesdk/a/b/c/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/huawei/updatesdk/a/b/c/b;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2}, Lcom/huawei/updatesdk/a/b/c/b;->a(Landroid/content/Intent;)Lcom/huawei/updatesdk/a/b/c/b;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/huawei/updatesdk/a/b/c/a;->a(Landroid/content/Context;Lcom/huawei/updatesdk/a/b/c/b;)V

    return-void
.end method
