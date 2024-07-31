.class public Lcom/huawei/hianalytics/ab/bc/kl/gh;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/kl/gh;


# instance fields
.field private bc:Z

.field private cd:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/kl/gh;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/bc/kl/gh;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab:Lcom/huawei/hianalytics/ab/bc/kl/gh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc:Z

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ik()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->cd:Landroid/content/Context;

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab:Lcom/huawei/hianalytics/ab/bc/kl/gh;

    return-object v0
.end method


# virtual methods
.method public bc()Z
    .locals 3

    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->cd:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->cd:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc:Z

    return v0
.end method
