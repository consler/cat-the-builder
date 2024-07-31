.class Lcom/huawei/hms/update/ui/k$a;
.super Ljava/lang/Object;
.source "SilentUpdateWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/update/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/ui/k;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/update/ui/k;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/huawei/hms/update/ui/k$a;->a:Lcom/huawei/hms/update/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/update/ui/k;Lcom/huawei/hms/update/ui/k$1;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k$a;-><init>(Lcom/huawei/hms/update/ui/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k$a;->a:Lcom/huawei/hms/update/ui/k;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/huawei/hms/update/ui/k;->a(Lcom/huawei/hms/update/ui/k;I)V

    .line 414
    return-void
.end method
