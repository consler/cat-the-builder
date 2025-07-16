.class public final Lorg/catrobat/paintroid/ui/LayerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LayerAdapter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;,
        Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;,
        Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;",
        ">;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u00012\u00020\u0003:\u0003\u001c\u001d\u001eB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u001c\u0010\u0016\u001a\u00020\u00112\n\u0010\u0017\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u001c\u0010\u0018\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0013H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;",
        "presenter",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "mainActivity",
        "Lorg/catrobat/paintroid/MainActivity;",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;Lorg/catrobat/paintroid/MainActivity;)V",
        "getMainActivity",
        "()Lorg/catrobat/paintroid/MainActivity;",
        "getPresenter",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "viewHolders",
        "Landroid/util/SparseArray;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "clearViewHolders",
        "",
        "getItemCount",
        "",
        "getViewHolderAt",
        "position",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "BackgroundType",
        "Companion",
        "LayerViewHolder",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mainActivity:Lorg/catrobat/paintroid/MainActivity;

.field private final presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

.field private final viewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

    const-string v0, "LayerAdapter"

    .line 230
    sput-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;Lorg/catrobat/paintroid/MainActivity;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    .line 56
    iput-object p2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    .line 58
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final clearViewHolders()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerCount()I

    move-result v0

    return v0
.end method

.method public final getMainActivity()Lorg/catrobat/paintroid/MainActivity;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-object v0
.end method

.method public final getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    return-object v0
.end method

.method public getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/ui/LayerAdapter;->onBindViewHolder(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->bindView()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/ui/LayerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 62
    sget v0, Lorg/catrobat/paintroid/R$layout;->pocketpaint_item_layer:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance p2, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-direct {p2, p0, p1, v0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter;Landroid/view/View;Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V

    return-object p2
.end method
