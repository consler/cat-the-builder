.class public final enum Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
.super Ljava/lang/Enum;
.source "SmpteOffset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pdrogfer/mididroid/event/meta/SmpteOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_24:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_25:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_30:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

.field public static final enum FRAME_RATE_30_DROP:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 153
    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_24"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_24:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_25"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_25:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_30_DROP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30_DROP:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    new-instance v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    const-string v1, "FRAME_RATE_30"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    .line 151
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    sget-object v6, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_24:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    aput-object v6, v1, v2

    sget-object v2, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_25:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    aput-object v2, v1, v3

    sget-object v2, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30_DROP:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->$VALUES:[Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput p3, p0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->value:I

    .line 160
    return-void
.end method

.method public static fromInt(I)Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    .locals 1
    .param p0, "val"    # I

    .line 164
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    sget-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0

    .line 171
    :cond_1
    sget-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_30_DROP:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0

    .line 169
    :cond_2
    sget-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_25:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0

    .line 167
    :cond_3
    sget-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->FRAME_RATE_24:Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0
.end method

.method public static values()[Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;
    .locals 1

    .line 151
    sget-object v0, Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->$VALUES:[Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    invoke-virtual {v0}, [Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pdrogfer/mididroid/event/meta/SmpteOffset$FrameRate;

    return-object v0
.end method
