.class public final enum Lcom/huawei/hianalytics/ab/cd/ab/bc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hianalytics/ab/cd/ab/bc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

.field public static final enum bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

.field public static final enum cd:Lcom/huawei/hianalytics/ab/cd/ab/bc;

.field public static final enum de:Lcom/huawei/hianalytics/ab/cd/ab/bc;

.field private static final synthetic ef:[Lcom/huawei/hianalytics/ab/cd/ab/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;

    const-string v1, "IMEI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hianalytics/ab/cd/ab/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    new-instance v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;

    const-string v1, "UDID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hianalytics/ab/cd/ab/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    new-instance v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;

    const-string v1, "SN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hianalytics/ab/cd/ab/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->cd:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    new-instance v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;

    const-string v1, "EMPTY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hianalytics/ab/cd/ab/bc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->de:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hianalytics/ab/cd/ab/bc;

    sget-object v6, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ab:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->bc:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hianalytics/ab/cd/ab/bc;->cd:Lcom/huawei/hianalytics/ab/cd/ab/bc;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ef:[Lcom/huawei/hianalytics/ab/cd/ab/bc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/cd/ab/bc;
    .locals 1

    const-class v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hianalytics/ab/cd/ab/bc;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hianalytics/ab/cd/ab/bc;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ef:[Lcom/huawei/hianalytics/ab/cd/ab/bc;

    invoke-virtual {v0}, [Lcom/huawei/hianalytics/ab/cd/ab/bc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hianalytics/ab/cd/ab/bc;

    return-object v0
.end method
