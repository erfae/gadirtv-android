.class public Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SubtitleSettingDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public btn_minus:Landroid/widget/ImageButton;

.field public btn_plus:Landroid/widget/ImageButton;

.field public context:Landroid/content/Context;

.field public image_background_color:Landroid/widget/ImageView;

.field public image_subtitle_color:Landroid/widget/ImageView;

.field public is_enable:Z

.field public ly_bg_color:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_color:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public ly_enable:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public max_size:I

.field public min_size:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public selectColorDlgFragment:Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;

.field public step:I

.field public str_bg_color:Landroid/widget/TextView;

.field public str_enable:Landroid/widget/TextView;

.field public str_subtitle_size:Landroid/widget/TextView;

.field public str_text_color:Landroid/widget/TextView;

.field public subtitle_size:I

.field public switch_subtitle:Landroidx/appcompat/widget/SwitchCompat;

.field public txt_header:Landroid/widget/TextView;

.field public txt_subtitle_size:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$hx1PIaE27ANZerieZquwTAqNhw4(Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->lambda$showSelectColorDlgFragment$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->is_enable:Z

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->step:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->min_size:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->max_size:I

    .line 4
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0b03d8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->txt_header:Landroid/widget/TextView;

    const v0, 0x7f0b035f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_enable:Landroid/widget/TextView;

    const v0, 0x7f0b0373

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_subtitle_size:Landroid/widget/TextView;

    const v0, 0x7f0b0374

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_text_color:Landroid/widget/TextView;

    const v0, 0x7f0b0357

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_bg_color:Landroid/widget/TextView;

    const v0, 0x7f0b03fd

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->txt_subtitle_size:Landroid/widget/TextView;

    const v0, 0x7f0b023e

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->ly_enable:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0256

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->ly_color:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0234

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->ly_bg_color:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0094

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->btn_minus:Landroid/widget/ImageButton;

    const v0, 0x7f0b0099

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->btn_plus:Landroid/widget/ImageButton;

    const v0, 0x7f0b01eb

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->image_subtitle_color:Landroid/widget/ImageView;

    const v0, 0x7f0b01c6

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->image_background_color:Landroid/widget/ImageView;

    const v0, 0x7f0b037f

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->switch_subtitle:Landroidx/appcompat/widget/SwitchCompat;

    .line 15
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->ly_enable:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->ly_color:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->ly_bg_color:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->btn_minus:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->btn_plus:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_subtitle_size:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSubtitel_size()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->txt_header:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSubtitle_settings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_enable:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getEnable_subtitles()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_text_color:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSubtitel_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->str_bg_color:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getSubtitel_background()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->txt_subtitle_size:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->switch_subtitle:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->is_enable:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->image_subtitle_color:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->image_background_color:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$showSelectColorDlgFragment$0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->image_subtitle_color:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->image_background_color:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;
    .registers 2

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method private showSelectColorDlgFragment(Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_subtitle_color"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->newInstance(Landroid/content/Context;Z)Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->selectColorDlgFragment:Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;

    .line 6
    new-instance v1, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;

    const/16 v3, 0xb

    invoke-direct {v1, p0, v3}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;->setOnChangeColorListener(Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment$ChangeColorListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->selectColorDlgFragment:Lcom/nettv/livestore/dlgfragment/SelectColorDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "pt"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_7a

    goto :goto_79

    .line 2
    :sswitch_b
    invoke-direct {p0, v1}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->showSelectColorDlgFragment(Z)V

    goto :goto_79

    .line 3
    :sswitch_f
    iget-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->is_enable:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->is_enable:Z

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->switch_subtitle:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->is_enable:Z

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleEnable(Z)V

    goto :goto_79

    :sswitch_21
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->showSelectColorDlgFragment(Z)V

    goto :goto_79

    .line 7
    :sswitch_26
    iget p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    iget v1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->max_size:I

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->step:I

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_79

    add-int/2addr p1, v2

    .line 8
    iput p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->txt_subtitle_size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleSize(I)V

    goto :goto_79

    .line 11
    :sswitch_50
    iget p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    iget v1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->min_size:I

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->step:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_79

    sub-int/2addr p1, v2

    .line 12
    iput p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->txt_subtitle_size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleSize(I)V

    :cond_79
    :goto_79
    return-void

    :sswitch_data_7a
    .sparse-switch
        0x7f0b0094 -> :sswitch_50
        0x7f0b0099 -> :sswitch_26
        0x7f0b0234 -> :sswitch_21
        0x7f0b023e -> :sswitch_f
        0x7f0b0256 -> :sswitch_b
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
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
    .registers 5

    const p3, 0x7f0e006d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 p2, 0x5

    .line 5
    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->step:I

    const/16 p2, 0xc

    .line 6
    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->min_size:I

    const/16 p2, 0x3e8

    .line 7
    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->max_size:I

    goto :goto_37

    :cond_2d
    const/4 p2, 0x2

    .line 8
    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->step:I

    const/4 p2, 0x6

    .line 9
    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->min_size:I

    const/16 p2, 0x30

    .line 10
    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->max_size:I

    .line 11
    :goto_37
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result p2

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->subtitle_size:I

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleEnable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->is_enable:Z

    .line 13
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/SubtitleSettingDlgFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method
