.class public final synthetic Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->values()[Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->TOP:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->BOTTOM:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
