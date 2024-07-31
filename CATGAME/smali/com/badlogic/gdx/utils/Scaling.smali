.class public final enum Lcom/badlogic/gdx/utils/Scaling;
.super Ljava/lang/Enum;
.source "Scaling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/Scaling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fill:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fillX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fillY:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fit:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum none:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretch:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretchX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretchY:Lcom/badlogic/gdx/utils/Scaling;

.field private static final temp:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fill"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fillX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fillY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretch"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretchX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretchY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "none"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    .line 23
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/utils/Scaling;

    sget-object v10, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v10, v1, v2

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v1, v3

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v1, v4

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v1, v5

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v1, v6

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v1, v7

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/badlogic/gdx/utils/Scaling;->$VALUES:[Lcom/badlogic/gdx/utils/Scaling;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Scaling;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/badlogic/gdx/utils/Scaling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/Scaling;
    .locals 1

    .line 23
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->$VALUES:[Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/Scaling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "sourceWidth"    # F
    .param p2, "sourceHeight"    # F
    .param p3, "targetWidth"    # F
    .param p4, "targetHeight"    # F

    .line 52
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling$1;->$SwitchMap$com$badlogic$gdx$utils$Scaling:[I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Scaling;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 94
    :pswitch_0
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 95
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_2

    .line 90
    :pswitch_1
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 92
    goto :goto_2

    .line 86
    :pswitch_2
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 87
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 88
    goto :goto_2

    .line 82
    :pswitch_3
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 83
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 84
    goto :goto_2

    .line 76
    :pswitch_4
    div-float v0, p4, p2

    .line 77
    .local v0, "scale":F
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, p1, v0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 78
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, p2, v0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 79
    goto :goto_2

    .line 70
    .end local v0    # "scale":F
    :pswitch_5
    div-float v0, p3, p1

    .line 71
    .restart local v0    # "scale":F
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, p1, v0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 72
    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, p2, v0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 73
    goto :goto_2

    .line 62
    .end local v0    # "scale":F
    :pswitch_6
    div-float v0, p4, p3

    .line 63
    .local v0, "targetRatio":F
    div-float v1, p2, p1

    .line 64
    .local v1, "sourceRatio":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float v2, p3, p1

    goto :goto_0

    :cond_0
    div-float v2, p4, p2

    .line 65
    .local v2, "scale":F
    :goto_0
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 66
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 67
    goto :goto_2

    .line 54
    .end local v0    # "targetRatio":F
    .end local v1    # "sourceRatio":F
    .end local v2    # "scale":F
    :pswitch_7
    div-float v0, p4, p3

    .line 55
    .restart local v0    # "targetRatio":F
    div-float v1, p2, p1

    .line 56
    .restart local v1    # "sourceRatio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float v2, p3, p1

    goto :goto_1

    :cond_1
    div-float v2, p4, p2

    .line 57
    .restart local v2    # "scale":F
    :goto_1
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 58
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 59
    nop

    .line 98
    .end local v0    # "targetRatio":F
    .end local v1    # "sourceRatio":F
    .end local v2    # "scale":F
    :goto_2
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
