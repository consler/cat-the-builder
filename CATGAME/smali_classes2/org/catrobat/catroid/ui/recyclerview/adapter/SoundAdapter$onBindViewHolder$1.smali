.class final Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SoundAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
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
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
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

.field final synthetic $item:Lorg/catrobat/catroid/common/SoundInfo;

.field final synthetic $position:I

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;Lorg/catrobat/catroid/common/SoundInfo;I)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$item:Lorg/catrobat/catroid/common/SoundInfo;

    iput p4, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->access$getMediaPlayer$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->stopSound()V

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$item:Lorg/catrobat/catroid/common/SoundInfo;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->access$getCurrentPlaying$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;)Lorg/catrobat/catroid/common/SoundInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->access$getCurrentPlayingPosition$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->notifyItemChanged(I)V

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    iget v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$position:I

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$item:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-static {v0, v1, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->access$setAndPlaySound(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;ILorg/catrobat/catroid/common/SoundInfo;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$holder:Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    iget v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$position:I

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;->$item:Lorg/catrobat/catroid/common/SoundInfo;

    invoke-static {v0, v1, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->access$setAndPlaySound(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;ILorg/catrobat/catroid/common/SoundInfo;)V

    .line 60
    :cond_1
    :goto_0
    nop

    .line 61
    return-void
.end method
