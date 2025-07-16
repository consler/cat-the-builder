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
    .locals 11

    .line 83
    new-instance v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v1, "EQUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v1, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v3, "GREATER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v3, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v5, "LESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v5, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v7, "GREATER_OR_EQUAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->GREATER_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    new-instance v7, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const-string v9, "LESS_OR_EQUAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->LESS_OR_EQUAL:Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 82
    sput-object v9, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;->$VALUES:[Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

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

    .line 82
    const-class v0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/functors/ComparatorPredicate$Criterion;

    return-object p0
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
