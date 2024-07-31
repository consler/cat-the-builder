.class public Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "UserDefinedBrickListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final USER_DEFINED_BRICK_LIST_FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

.field private addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

.field private addUserDefinedBrickButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->USER_DEFINED_BRICK_LIST_FRAGMENT_TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method private addUserDefinedBrickToScript(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 5
    .param p1, "userDefinedBrickToAdd"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 148
    :try_start_0
    invoke-interface {p1}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    .line 149
    .local v0, "clonedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v1, p1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    if-eqz v1, :cond_0

    .line 150
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;->setCallingBrick(Z)V

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 154
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 155
    .local v1, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "brick_category_fragment"

    .line 156
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 158
    .local v2, "categoryFragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 160
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->USER_DEFINED_BRICK_LIST_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 165
    .local v3, "addBrickFragment":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 170
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .end local v0    # "clonedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v1    # "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    .end local v2    # "categoryFragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "addBrickFragment":Landroidx/fragment/app/Fragment;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1202cf

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 175
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-void
.end method

.method public static newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;
    .locals 1
    .param p0, "addBrickListener"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    .line 63
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;-><init>()V

    .line 65
    .local v0, "fragment":Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;
    iput-object p0, v0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    .line 66
    return-object v0
.end method

.method private setupUserDefinedBrickListView()V
    .locals 4

    .line 115
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;-><init>()V

    .line 118
    .local v1, "categoryBricksFactory":Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;
    if-eqz v0, :cond_0

    .line 119
    const v2, 0x7f1201e7

    .line 120
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;->getBricks(Ljava/lang/String;ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 121
    .local v2, "brickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v3, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    .line 122
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .end local v2    # "brickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStart$0$UserDefinedBrickListFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->adapter:Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->addUserDefinedBrickToScript(Lorg/catrobat/catroid/content/bricks/Brick;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 128
    sget-object v0, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;->Companion:Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment$Companion;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->addBrickListener:Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    .line 129
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment$Companion;->newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;

    move-result-object v0

    .line 131
    .local v0, "addUserDefinedBrickFragment":Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;-><init>()V

    .line 132
    .local v1, "userDefinedBrick":Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "user_brick"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 134
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 137
    .local v3, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0a03b7

    .line 139
    const-string v6, "add_user_defined_brick_fragment"

    invoke-virtual {v4, v5, v0, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 144
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    const v0, 0x7f0d0169

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->addUserDefinedBrickButton:Landroid/widget/ImageButton;

    .line 87
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->setHasOptionsMenu(Z)V

    .line 89
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->setupUserDefinedBrickListView()V

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    .local v1, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 94
    .local v2, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v2, :cond_0

    .line 95
    const v3, 0x7f1201e7

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 99
    .end local v2    # "actionBar":Landroidx/appcompat/app/ActionBar;
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDestroyView()V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 74
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 76
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v1, :cond_0

    .line 77
    const v2, 0x7f1201d2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 80
    .end local v1    # "actionBar":Landroidx/appcompat/app/ActionBar;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 104
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 105
    const v0, 0x7f0a0597

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onStart()V

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$UserDefinedBrickListFragment$QvtH_w_sl8zxSbMTzjhw0090Fxw;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$UserDefinedBrickListFragment$QvtH_w_sl8zxSbMTzjhw0090Fxw;-><init>(Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    return-void
.end method
