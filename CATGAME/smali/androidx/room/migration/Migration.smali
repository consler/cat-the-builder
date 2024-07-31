.class public abstract Landroidx/room/migration/Migration;
.super Ljava/lang/Object;
.source "Migration.java"


# instance fields
.field public final endVersion:I

.field public final startVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startVersion"    # I
    .param p2, "endVersion"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startVersion",
            "endVersion"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroidx/room/migration/Migration;->startVersion:I

    .line 49
    iput p2, p0, Landroidx/room/migration/Migration;->endVersion:I

    .line 50
    return-void
.end method


# virtual methods
.method public abstract migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "database"
        }
    .end annotation
.end method
