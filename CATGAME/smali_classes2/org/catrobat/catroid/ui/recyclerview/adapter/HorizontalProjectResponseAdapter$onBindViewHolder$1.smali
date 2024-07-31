.class final Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "HorizontalProjectResponseAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;I)V
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
.field final synthetic $item:Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;Lorg/catrobat/catroid/retrofit/models/ProjectResponse;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;->$item:Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->access$getCallback$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;)Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;->$item:Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    invoke-virtual {v1}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getProjectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;->onFeatureProjectClicked(Ljava/lang/String;)V

    .line 73
    return-void
.end method
