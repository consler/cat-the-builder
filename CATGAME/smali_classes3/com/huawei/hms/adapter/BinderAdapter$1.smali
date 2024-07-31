.class Lcom/huawei/hms/adapter/BinderAdapter$1;
.super Ljava/lang/Object;
.source "BinderAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/adapter/BinderAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/adapter/BinderAdapter;


# direct methods
.method constructor <init>(Lcom/huawei/hms/adapter/BinderAdapter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter$1;->a:Lcom/huawei/hms/adapter/BinderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 87
    if-eqz p1, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    const-string p1, "BinderAdapter"

    const-string v0, "In connect, bind core service time out"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter$1;->a:Lcom/huawei/hms/adapter/BinderAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BinderAdapter;->a(Lcom/huawei/hms/adapter/BinderAdapter;)V

    .line 93
    const/4 p1, 0x1

    return p1

    .line 88
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
