.class Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$2;
.super Landroidx/room/SharedSQLiteStatement;
.source "FeaturedProjectDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl$2;->this$0:Lorg/catrobat/catroid/db/FeaturedProjectDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 77
    const-string v0, "DELETE FROM featured_project"

    .line 78
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE FROM featured_project"

    return-object v1
.end method
