.class Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserListValuesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private text1:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$1;

    .line 42
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    return-object p1
.end method
