.class public final Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;
.super Ljava/lang/Object;
.source "LineTool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/tools/implementation/LineTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;",
        "",
        "()V",
        "topBarViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;",
        "getTopBarViewHolder",
        "()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;",
        "setTopBarViewHolder",
        "(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 89
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTopBarViewHolder()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    .locals 1

    .line 90
    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->access$getTopBarViewHolder$cp()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public final setTopBarViewHolder(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    .line 90
    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->access$setTopBarViewHolder$cp(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V

    return-void
.end method
