.class public final enum Lcom/huawei/updatesdk/service/c/c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/service/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/updatesdk/service/c/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/updatesdk/service/c/c$b;

.field public static final enum b:Lcom/huawei/updatesdk/service/c/c$b;

.field private static final synthetic c:[Lcom/huawei/updatesdk/service/c/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/huawei/updatesdk/service/c/c$b;

    const-string v1, "INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/updatesdk/service/c/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/updatesdk/service/c/c$b;->a:Lcom/huawei/updatesdk/service/c/c$b;

    new-instance v0, Lcom/huawei/updatesdk/service/c/c$b;

    const-string v1, "UNINSTALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/updatesdk/service/c/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/updatesdk/service/c/c$b;->b:Lcom/huawei/updatesdk/service/c/c$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/huawei/updatesdk/service/c/c$b;

    sget-object v4, Lcom/huawei/updatesdk/service/c/c$b;->a:Lcom/huawei/updatesdk/service/c/c$b;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/huawei/updatesdk/service/c/c$b;->c:[Lcom/huawei/updatesdk/service/c/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/updatesdk/service/c/c$b;
    .locals 1

    const-class v0, Lcom/huawei/updatesdk/service/c/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/updatesdk/service/c/c$b;

    return-object p0
.end method

.method public static values()[Lcom/huawei/updatesdk/service/c/c$b;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/service/c/c$b;->c:[Lcom/huawei/updatesdk/service/c/c$b;

    invoke-virtual {v0}, [Lcom/huawei/updatesdk/service/c/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/updatesdk/service/c/c$b;

    return-object v0
.end method
