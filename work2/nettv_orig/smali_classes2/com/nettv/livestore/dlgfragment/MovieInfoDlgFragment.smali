.class public Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MovieInfoDlgFragment.java"


# instance fields
.field public description:Ljava/lang/String;

.field public image_logo:Landroid/widget/ImageView;

.field public image_movie:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public image_url:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public txt_description:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_resolution:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$mQHny_Tr6tmTZMrDz_pmRpBrggw(Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b03e4

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b03cb

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->txt_description:Landroid/widget/TextView;

    const v0, 0x7f0b03f2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->txt_resolution:Landroid/widget/TextView;

    const v0, 0x7f0b01dd

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->image_logo:Landroid/widget/ImageView;

    const v0, 0x7f0b01e0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->image_movie:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v0, 0x7f0b0419

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->name:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->description:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->image_url:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->resolution:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f14013e

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0e0047

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->initView(Landroid/view/View;)V

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->txt_name:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->txt_description:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->description:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->txt_resolution:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->resolution:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->image_movie:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->image_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->image_logo:Landroid/widget/ImageView;

    const v2, 0x7f0800a9

    invoke-static {p2, p3, v0, v2, v1}, Lcom/nettv/livestore/utils/ImageLoaderJava;->imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-object p1
.end method
