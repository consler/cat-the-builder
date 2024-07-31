.class public final Lorg/catrobat/catroid/physics/ParticleConstants;
.super Ljava/lang/Object;
.source "ParticleConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/physics/ParticleConstants;",
        "",
        "()V",
        "LIFE_HIGH_MAX_ACTIVE",
        "",
        "LIFE_HIGH_MAX_DEAD",
        "PARTICLE_SCALE",
        "VELOCITY_HIGH_MAX",
        "VELOCITY_HIGH_MIN",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/physics/ParticleConstants;

.field public static final LIFE_HIGH_MAX_ACTIVE:F = 1000.0f

.field public static final LIFE_HIGH_MAX_DEAD:F = 5000.0f

.field public static final PARTICLE_SCALE:F = 32.0f

.field public static final VELOCITY_HIGH_MAX:F = 300.0f

.field public static final VELOCITY_HIGH_MIN:F = 120.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/catrobat/catroid/physics/ParticleConstants;

    invoke-direct {v0}, Lorg/catrobat/catroid/physics/ParticleConstants;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/physics/ParticleConstants;->INSTANCE:Lorg/catrobat/catroid/physics/ParticleConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
