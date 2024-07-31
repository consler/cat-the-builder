.class public final enum Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;
.super Ljava/lang/Enum;
.source "JumpingSumoSoundBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sounds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

.field public static final enum DEFAULT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

.field public static final enum INSECT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

.field public static final enum MONSTER:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

.field public static final enum ROBOT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->DEFAULT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    const-string v1, "ROBOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->ROBOT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    const-string v1, "INSECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->INSECT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    const-string v1, "MONSTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->MONSTER:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    .line 45
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    sget-object v6, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->DEFAULT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->ROBOT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->INSECT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->$VALUES:[Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->$VALUES:[Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    return-object v0
.end method
