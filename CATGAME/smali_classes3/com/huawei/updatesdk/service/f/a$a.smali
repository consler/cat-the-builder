.class public final enum Lcom/huawei/updatesdk/service/f/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/service/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/updatesdk/service/f/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/updatesdk/service/f/a$a;

.field public static final enum b:Lcom/huawei/updatesdk/service/f/a$a;

.field private static final synthetic c:[Lcom/huawei/updatesdk/service/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/huawei/updatesdk/service/f/a$a;

    const-string v1, "CONFIRM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/updatesdk/service/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/updatesdk/service/f/a$a;->a:Lcom/huawei/updatesdk/service/f/a$a;

    new-instance v0, Lcom/huawei/updatesdk/service/f/a$a;

    const-string v1, "CANCEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/updatesdk/service/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/updatesdk/service/f/a$a;->b:Lcom/huawei/updatesdk/service/f/a$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/huawei/updatesdk/service/f/a$a;

    sget-object v4, Lcom/huawei/updatesdk/service/f/a$a;->a:Lcom/huawei/updatesdk/service/f/a$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/huawei/updatesdk/service/f/a$a;->c:[Lcom/huawei/updatesdk/service/f/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/updatesdk/service/f/a$a;
    .locals 1

    const-class v0, Lcom/huawei/updatesdk/service/f/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/updatesdk/service/f/a$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/updatesdk/service/f/a$a;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/f/a$a;->c:[Lcom/huawei/updatesdk/service/f/a$a;

    invoke-virtual {v0}, [Lcom/huawei/updatesdk/service/f/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/updatesdk/service/f/a$a;

    return-object v0
.end method
