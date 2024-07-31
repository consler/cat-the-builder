.class public final enum Lcom/google/android/gms/internal/gtm/zzbg;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/gtm/zzbg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzya:Lcom/google/android/gms/internal/gtm/zzbg;

.field private static final enum zzyb:Lcom/google/android/gms/internal/gtm/zzbg;

.field private static final enum zzyc:Lcom/google/android/gms/internal/gtm/zzbg;

.field private static final enum zzyd:Lcom/google/android/gms/internal/gtm/zzbg;

.field public static final enum zzye:Lcom/google/android/gms/internal/gtm/zzbg;

.field private static final enum zzyf:Lcom/google/android/gms/internal/gtm/zzbg;

.field private static final synthetic zzyg:[Lcom/google/android/gms/internal/gtm/zzbg;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbg;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzya:Lcom/google/android/gms/internal/gtm/zzbg;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbg;

    const-string v1, "BATCH_BY_SESSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/gtm/zzbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyb:Lcom/google/android/gms/internal/gtm/zzbg;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbg;

    const-string v1, "BATCH_BY_TIME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/gtm/zzbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyc:Lcom/google/android/gms/internal/gtm/zzbg;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbg;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/gtm/zzbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyd:Lcom/google/android/gms/internal/gtm/zzbg;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbg;

    const-string v1, "BATCH_BY_COUNT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/gtm/zzbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzye:Lcom/google/android/gms/internal/gtm/zzbg;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbg;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/gtm/zzbg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyf:Lcom/google/android/gms/internal/gtm/zzbg;

    .line 20
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzbg;

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzbg;->zzya:Lcom/google/android/gms/internal/gtm/zzbg;

    aput-object v8, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbg;->zzyb:Lcom/google/android/gms/internal/gtm/zzbg;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbg;->zzyc:Lcom/google/android/gms/internal/gtm/zzbg;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbg;->zzyd:Lcom/google/android/gms/internal/gtm/zzbg;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbg;->zzye:Lcom/google/android/gms/internal/gtm/zzbg;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbg;->zzyg:[Lcom/google/android/gms/internal/gtm/zzbg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyg:[Lcom/google/android/gms/internal/gtm/zzbg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbg;

    return-object v0
.end method

.method public static zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzbg;
    .locals 1

    .line 3
    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyb:Lcom/google/android/gms/internal/gtm/zzbg;

    return-object p0

    .line 5
    :cond_0
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyc:Lcom/google/android/gms/internal/gtm/zzbg;

    return-object p0

    .line 7
    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyd:Lcom/google/android/gms/internal/gtm/zzbg;

    return-object p0

    .line 9
    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzye:Lcom/google/android/gms/internal/gtm/zzbg;

    return-object p0

    .line 11
    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzyf:Lcom/google/android/gms/internal/gtm/zzbg;

    return-object p0

    .line 13
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzya:Lcom/google/android/gms/internal/gtm/zzbg;

    return-object p0
.end method
