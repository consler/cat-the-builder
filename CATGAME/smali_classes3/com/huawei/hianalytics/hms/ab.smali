.class public Lcom/huawei/hianalytics/hms/ab;
.super Ljava/lang/Object;


# static fields
.field static ab:Lcom/huawei/hianalytics/hms/ab;


# instance fields
.field bc:Lcom/huawei/hianalytics/ab/fg/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/hms/ab;

    invoke-direct {v0}, Lcom/huawei/hianalytics/hms/ab;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/hms/ab;->ab:Lcom/huawei/hianalytics/hms/ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hianalytics/hms/ab;->bc:Lcom/huawei/hianalytics/ab/fg/cd;

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/hms/ab;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/hms/ab;->ab:Lcom/huawei/hianalytics/hms/ab;

    return-object v0
.end method


# virtual methods
.method public ab(Lcom/huawei/hianalytics/ab/fg/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/hms/ab;->bc:Lcom/huawei/hianalytics/ab/fg/cd;

    return-void
.end method

.method public bc()Lcom/huawei/hianalytics/ab/fg/cd;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/ab;->bc:Lcom/huawei/hianalytics/ab/fg/cd;

    return-object v0
.end method

.method public cd()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/hms/ab;->bc:Lcom/huawei/hianalytics/ab/fg/cd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
