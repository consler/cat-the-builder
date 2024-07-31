.class public final enum Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
.super Ljava/lang/Enum;
.source "ComparatorPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/functors/ComparatorPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Criterion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

.field public static final enum LESS_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 83
    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v1, "EQUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v1, "GREATER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v1, "LESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v1, "GREATER_OR_EQUAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v1, "LESS_OR_EQUAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    .line 82
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    sget-object v7, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->$VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;
    .locals 1

    .line 82
    sget-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->$VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-object v0
.end method
