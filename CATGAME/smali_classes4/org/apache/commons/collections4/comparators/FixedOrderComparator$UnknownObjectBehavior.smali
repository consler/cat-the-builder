.class public final enum Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
.super Ljava/lang/Enum;
.source "FixedOrderComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/comparators/FixedOrderComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnknownObjectBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const-string v1, "BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const-string v1, "AFTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const-string v1, "EXCEPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    .line 61
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    sget-object v5, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->$VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->$VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method
