.class public final enum Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hianalytics/ab/bc/ab/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

.field public static final enum bc:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

.field public static final enum cd:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

.field public static final enum de:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

.field private static final synthetic fg:[Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;


# instance fields
.field private ef:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    const-string v1, "AES"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    const-string v1, "RSA"

    const/4 v4, 0x1

    const/16 v5, 0x80

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    const-string v1, "HMCSHA256"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->cd:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    const-string v1, "OTHER"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->de:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    sget-object v6, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->bc:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->cd:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    aput-object v2, v1, v5

    aput-object v0, v1, v3

    sput-object v1, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->fg:[Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ef:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;
    .locals 1

    const-class v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;
    .locals 1

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->fg:[Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v0}, [Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    return-object v0
.end method


# virtual methods
.method public ab()I
    .locals 1

    iget v0, p0, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ef:I

    return v0
.end method
