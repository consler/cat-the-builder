.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;

.field public final synthetic f$1:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;->f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;->f$1:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;->f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;->f$1:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->lambda$onBindViewHolder$0$CategoryListRVAdapter(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;Landroid/view/View;)V

    return-void
.end method
