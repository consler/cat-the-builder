.class Lcom/huawei/updatesdk/service/f/c;
.super Lcom/huawei/updatesdk/service/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/updatesdk/service/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/updatesdk/service/f/a$b;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/updatesdk/service/f/a$b;->a()V

    :cond_0
    const-string p1, "DumbBaseAlertDialog"

    const-string v0, "nothing to do"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
