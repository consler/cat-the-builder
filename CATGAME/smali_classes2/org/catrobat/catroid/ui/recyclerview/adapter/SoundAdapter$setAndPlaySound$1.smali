.class final Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$setAndPlaySound$1;
.super Ljava/lang/Object;
.source "SoundAdapter.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->setAndPlaySound(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;ILorg/catrobat/catroid/common/SoundInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/media/MediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onCompletion"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$setAndPlaySound$1;->$holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "it"    # Landroid/media/MediaPlayer;

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$setAndPlaySound$1;->$holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
