.class public final Lorg/catrobat/catroid/db/DatabaseMigrations;
.super Ljava/lang/Object;
.source "DatabaseMigrations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/catroid/db/DatabaseMigrations;",
        "",
        "()V",
        "MIGRATION_1_2",
        "Landroidx/room/migration/Migration;",
        "getMIGRATION_1_2",
        "()Landroidx/room/migration/Migration;",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/db/DatabaseMigrations;

.field private static final MIGRATION_1_2:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lorg/catrobat/catroid/db/DatabaseMigrations;

    invoke-direct {v0}, Lorg/catrobat/catroid/db/DatabaseMigrations;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/db/DatabaseMigrations;->INSTANCE:Lorg/catrobat/catroid/db/DatabaseMigrations;

    .line 30
    new-instance v0, Lorg/catrobat/catroid/db/DatabaseMigrations$MIGRATION_1_2$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/db/DatabaseMigrations$MIGRATION_1_2$1;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lorg/catrobat/catroid/db/DatabaseMigrations;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMIGRATION_1_2()Landroidx/room/migration/Migration;
    .locals 1

    .line 30
    sget-object v0, Lorg/catrobat/catroid/db/DatabaseMigrations;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-object v0
.end method
