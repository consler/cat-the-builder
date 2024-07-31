.class public final enum Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;
.super Ljava/lang/Enum;
.source "VisualPlacementTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

.field public static final enum MOVE:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

.field public static final enum TAP:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 131
    new-instance v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    const-string v1, "MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->MOVE:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    new-instance v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    const-string v1, "TAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->TAP:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    sget-object v4, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->MOVE:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->$VALUES:[Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    const-class v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;
    .locals 1

    .line 131
    sget-object v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->$VALUES:[Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    return-object v0
.end method
