.class public final enum Lar/com/hjg/pngj/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lar/com/hjg/pngj/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_NONE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_SUB:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_UP:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

.field private static byVal:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lar/com/hjg/pngj/FilterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 14
    new-instance v0, Lar/com/hjg/pngj/FilterType;

    const-string v1, "FILTER_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    .line 18
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v3, "FILTER_SUB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    .line 22
    new-instance v3, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    .line 26
    new-instance v5, Lar/com/hjg/pngj/FilterType;

    const-string v7, "FILTER_AVERAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    .line 30
    new-instance v7, Lar/com/hjg/pngj/FilterType;

    const-string v9, "FILTER_PAETH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    .line 34
    new-instance v9, Lar/com/hjg/pngj/FilterType;

    const/4 v11, -0x1

    const-string v12, "FILTER_DEFAULT"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    .line 38
    new-instance v11, Lar/com/hjg/pngj/FilterType;

    const-string v12, "FILTER_AGGRESSIVE"

    const/4 v14, 0x6

    const/4 v15, -0x2

    invoke-direct {v11, v12, v14, v15}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lar/com/hjg/pngj/FilterType;->FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    .line 42
    new-instance v12, Lar/com/hjg/pngj/FilterType;

    const-string v14, "FILTER_VERYAGGRESSIVE"

    const/4 v13, 0x7

    const/4 v10, -0x4

    invoke-direct {v12, v14, v13, v10}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lar/com/hjg/pngj/FilterType;->FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    .line 46
    new-instance v14, Lar/com/hjg/pngj/FilterType;

    const-string v13, "FILTER_ADAPTIVE_FULL"

    const/16 v8, 0x8

    invoke-direct {v14, v13, v8, v10}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    .line 50
    new-instance v10, Lar/com/hjg/pngj/FilterType;

    const/4 v13, -0x3

    const-string v8, "FILTER_ADAPTIVE_MEDIUM"

    const/16 v6, 0x9

    invoke-direct {v10, v8, v6, v13}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    .line 54
    new-instance v8, Lar/com/hjg/pngj/FilterType;

    const-string v13, "FILTER_ADAPTIVE_FAST"

    const/16 v6, 0xa

    invoke-direct {v8, v13, v6, v15}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    .line 58
    new-instance v13, Lar/com/hjg/pngj/FilterType;

    const/16 v15, -0xa

    const-string v6, "FILTER_SUPER_ADAPTIVE"

    const/16 v4, 0xb

    invoke-direct {v13, v6, v4, v15}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    .line 62
    new-instance v6, Lar/com/hjg/pngj/FilterType;

    const/16 v15, -0x28

    const-string v4, "FILTER_PRESERVE"

    const/16 v2, 0xc

    invoke-direct {v6, v4, v2, v15}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    .line 66
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const/16 v15, -0x32

    const-string v2, "FILTER_CYCLIC"

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v4, v2, v6, v15}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    .line 70
    new-instance v2, Lar/com/hjg/pngj/FilterType;

    const/16 v15, -0x64

    const-string v6, "FILTER_UNKNOWN"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    invoke-direct {v2, v6, v4, v15}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    const/16 v6, 0xf

    new-array v6, v6, [Lar/com/hjg/pngj/FilterType;

    const/4 v15, 0x0

    aput-object v0, v6, v15

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v12, v6, v0

    const/16 v0, 0x8

    aput-object v14, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v13, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    .line 10
    sput-object v6, Lar/com/hjg/pngj/FilterType;->$VALUES:[Lar/com/hjg/pngj/FilterType;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lar/com/hjg/pngj/FilterType;->byVal:Ljava/util/HashMap;

    .line 82
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->values()[Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    array-length v1, v0

    move v2, v15

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 83
    sget-object v4, Lar/com/hjg/pngj/FilterType;->byVal:Ljava/util/HashMap;

    iget v5, v3, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lar/com/hjg/pngj/FilterType;->val:I

    return-void
.end method

.method public static getAllStandard()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    .line 108
    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAllStandardExceptNone()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    .line 116
    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static getAllStandardForFirstRow()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    .line 120
    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAllStandardNoneLast()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    .line 112
    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getByVal(I)Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 88
    sget-object v0, Lar/com/hjg/pngj/FilterType;->byVal:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lar/com/hjg/pngj/FilterType;

    return-object p0
.end method

.method public static isAdaptive(Lar/com/hjg/pngj/FilterType;)Z
    .locals 1

    .line 101
    iget p0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    const/4 v0, -0x2

    if-gt p0, v0, :cond_0

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidStandard(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidStandard(Lar/com/hjg/pngj/FilterType;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 97
    iget p0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-static {p0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 10
    const-class v0, Lar/com/hjg/pngj/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lar/com/hjg/pngj/FilterType;

    return-object p0
.end method

.method public static values()[Lar/com/hjg/pngj/FilterType;
    .locals 1

    .line 10
    sget-object v0, Lar/com/hjg/pngj/FilterType;->$VALUES:[Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method
