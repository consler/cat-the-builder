.class public Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserListValuesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private userListValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "userListValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->userListValuesList:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->userListValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->userListValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 95
    move-object v0, p2

    .line 97
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020014

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 98
    iget-object v3, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 99
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    new-instance v4, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    invoke-direct {v4, v2}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$1;)V

    .line 101
    .local v4, "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->access$102(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 102
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .end local v4    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    .restart local v4    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    goto :goto_0

    .line 106
    .end local v4    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    :cond_1
    new-instance v3, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$1;)V

    move-object v4, v3

    .line 107
    .restart local v4    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->access$102(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 108
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v1, v2

    .line 113
    .local v1, "currentItemStringValue":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 114
    const-string v1, ""

    .line 117
    :cond_3
    invoke-static {v4}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->access$100(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->userListValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->userListValuesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .line 75
    const v0, 0x1020014

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;->context:Landroid/content/Context;

    const v3, 0x1090009

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v2, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$1;)V

    move-object v1, v2

    .line 78
    .local v1, "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->access$102(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v1    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    .restart local v1    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    goto :goto_0

    .line 83
    .end local v1    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$1;)V

    move-object v1, v2

    .line 84
    .restart local v1    # "holder":Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->access$102(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    invoke-static {v1}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->access$100(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12036b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 124
    return-void
.end method
