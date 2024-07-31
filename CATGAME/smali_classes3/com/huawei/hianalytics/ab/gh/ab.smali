.class public Lcom/huawei/hianalytics/ab/gh/ab;
.super Ljava/lang/Object;


# static fields
.field public static final ab:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/huawei/hianalytics/ab/gh/ab;->ab:Ljava/lang/Boolean;

    return-void
.end method

.method public static ab()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/gh/ab;->ab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-dev"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
