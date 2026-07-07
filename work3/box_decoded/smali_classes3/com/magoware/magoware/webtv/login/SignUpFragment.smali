.class public Lcom/magoware/magoware/webtv/login/SignUpFragment;
.super Landroidx/fragment/app/Fragment;
.source "SignUpFragment.java"


# static fields
.field public static final CREDENTIALS_INTENT_FILTER:Ljava/lang/String; = "credentials_filter"

.field private static final KEY_CONTENT:Ljava/lang/String; = "SignUpFragment:Content"

.field private static final SMS_SIGN_UP_REQUEST_CODE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SignUpFragment"

.field public static signup_pass:Ljava/lang/String;

.field public static signup_success:Z

.field public static signup_username:Ljava/lang/String;

.field public static view:Landroid/webkit/WebView;


# instance fields
.field private adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

.field private alertDialog:Landroid/app/AlertDialog;

.field private background:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private city:Landroid/widget/EditText;

.field private cityAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cityDropdown:Landroid/widget/Spinner;

.field private citySpinnerLayout:Landroid/widget/RelativeLayout;

.field context:Landroid/content/Context;

.field private countryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field countryDropdown:Landroid/widget/Spinner;

.field countrySpinner:Landroid/widget/Spinner;

.field private countrySpinnerLayout:Landroid/widget/RelativeLayout;

.field private email:Landroid/widget/EditText;

.field private loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private name:Landroid/widget/EditText;

.field private password:Landroid/widget/EditText;

.field private phone:Landroid/widget/EditText;

.field private final poppinsRegular:Landroid/graphics/Typeface;

.field private progress_dialog_signup:Landroid/app/ProgressDialog;

.field private signUp:Landroid/widget/Button;

.field signup_background_image:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05cc
    .end annotation
.end field

.field private final spaceCharFilter:Landroid/text/InputFilter;

.field private surname:Landroid/widget/EditText;

.field private termsAndConditions:Landroid/widget/TextView;

.field private username:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 84
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Poppins-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    .line 97
    new-instance v0, Lcom/magoware/magoware/webtv/login/SignUpFragment$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment$1;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->spaceCharFilter:Landroid/text/InputFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/login/SignUpFragment;)Landroid/graphics/Typeface;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private checkRequiredField(Landroid/widget/EditText;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getCountry()V
    .locals 9

    .line 531
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->context:Landroid/content/Context;

    const v2, 0x7f090008

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 535
    array-length v1, v0

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 536
    new-instance v4, Ljava/util/Locale;

    const-string v6, ""

    invoke-direct {v4, v6, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 541
    new-instance v0, Lcom/magoware/magoware/webtv/login/SignUpFragment$6;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0e01d2

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/magoware/magoware/webtv/login/SignUpFragment$6;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/content/Context;ILjava/util/List;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    .line 573
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 574
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 575
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f1400d4

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 576
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/magoware/magoware/webtv/login/SignUpFragment$7;

    invoke-direct {v1, p0, v7}, Lcom/magoware/magoware/webtv/login/SignUpFragment$7;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private getOrientation()I
    .locals 1

    .line 595
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private intentAuthSms(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 354
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    .line 355
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 356
    invoke-virtual {p0, v0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static isValidEmail(Landroid/widget/EditText;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidPassword()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isValidPhone()Z
    .locals 2

    .line 266
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidUsername()Z
    .locals 2

    .line 270
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-zA-Z0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/SignUpFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginListener"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;-><init>()V

    .line 110
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->setLoginListener(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)V

    return-object v0
.end method

.method private onSignUpSuccess()V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onLoginSelected()V

    .line 334
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$GObS6QWvIXEyXvmf1bnLVj1q8e0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$GObS6QWvIXEyXvmf1bnLVj1q8e0;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setMenuBackgroundImage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 276
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 277
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getDefaultBackgroundImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 279
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 281
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getBackgroundImageUrl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_background_image:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private showCountryList()V
    .locals 9

    .line 424
    sget-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->view:Landroid/webkit/WebView;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinnerLayout:Landroid/widget/RelativeLayout;

    .line 425
    sget-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->view:Landroid/webkit/WebView;

    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->citySpinnerLayout:Landroid/widget/RelativeLayout;

    .line 426
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinnerLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->citySpinnerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->context:Landroid/content/Context;

    const v2, 0x7f090003

    invoke-static {v0, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 430
    sget-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->view:Landroid/webkit/WebView;

    const v2, 0x7f0b01b4

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryDropdown:Landroid/widget/Spinner;

    .line 431
    sget-object v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->view:Landroid/webkit/WebView;

    const v2, 0x7f0b017a

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityDropdown:Landroid/widget/Spinner;

    .line 432
    new-instance v0, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f0e01d4

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/magoware/magoware/webtv/login/SignUpFragment$2;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    .line 465
    new-instance v0, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e01d4

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/magoware/magoware/webtv/login/SignUpFragment$3;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityAdapter:Landroid/widget/ArrayAdapter;

    .line 497
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f0e01d3

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 499
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 502
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryDropdown:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 505
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityDropdown:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 506
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 507
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 508
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryDropdown:Landroid/widget/Spinner;

    new-instance v1, Lcom/magoware/magoware/webtv/login/SignUpFragment$4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment$4;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 518
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityDropdown:Landroid/widget/Spinner;

    new-instance v1, Lcom/magoware/magoware/webtv/login/SignUpFragment$5;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment$5;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showSignUpDialog(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "isSuccessful"
        }
    .end annotation

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 311
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f150002

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 313
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 316
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0802eb

    .line 317
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, ""

    .line 318
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1402ff

    .line 319
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;

    invoke-direct {v2, p0, p2}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Z)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 325
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 328
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showYesNetUI()V
    .locals 2

    .line 364
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 366
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 368
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 370
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signUp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->poppinsRegular:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$2_XhrU2g_hhseAH4xMOuXv1TPgs;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$2_XhrU2g_hhseAH4xMOuXv1TPgs;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 381
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$GRPQD4o8cc3ro2igojvef2FsqPE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$GRPQD4o8cc3ro2igojvef2FsqPE;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 388
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$125WS1SYvP01d6NHnUcZx1bGhQU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$125WS1SYvP01d6NHnUcZx1bGhQU;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 395
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$L0NiLoH8Jz7GJCBj3Zsf7QWrs6s;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$L0NiLoH8Jz7GJCBj3Zsf7QWrs6s;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 407
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$HVE0i2lqpYKqxB4F8vsWgycTry0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$HVE0i2lqpYKqxB4F8vsWgycTry0;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$7ZNTknhw4PKIgadrfs53EhInxCc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$7ZNTknhw4PKIgadrfs53EhInxCc;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private signUp(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->signUpObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$hEVirMBycEjl0Yf3gsfD1fnxbYc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$hEVirMBycEjl0Yf3gsfD1fnxbYc;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$SignUpFragment(Landroid/view/View;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$SignUpFragment(Landroid/widget/Button;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x0

    const/4 p4, 0x6

    if-ne p3, p4, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string p4, "input_method"

    invoke-virtual {p3, p4}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    .line 164
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public synthetic lambda$onCreateView$2$SignUpFragment(Landroid/view/View;)V
    .locals 3

    .line 172
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->checkRequiredField(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->checkRequiredField(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->checkRequiredField(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    .line 173
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->checkRequiredField(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->checkRequiredField(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->city:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->checkRequiredField(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->isValidEmail(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->isValidPassword()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->isValidPhone()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->isValidUsername()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 175
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "firstname"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lastname"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telephone"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->city:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "city"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "country"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->cityDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countryDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signUp(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    .line 190
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->city:Landroid/widget/EditText;

    .line 191
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->isValidUsername()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f140495

    .line 194
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->isValidEmail(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f140497

    .line 196
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ge p1, v0, :cond_5

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f140327

    .line 198
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_7

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f140311

    .line 200
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    const p1, 0x7f140372

    .line 192
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreateView$3$SignUpFragment(Landroid/view/View;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;->onHelpSelected()V

    return-void
.end method

.method public synthetic lambda$onSignUpSuccess$6$SignUpFragment()V
    .locals 3

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "credentials_filter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->city:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->showAd()V

    const/4 v0, 0x1

    .line 349
    sput-boolean v0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_success:Z

    return-void
.end method

.method public synthetic lambda$showSignUpDialog$5$SignUpFragment(ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->onSignUpSuccess()V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showYesNetUI$10$SignUpFragment(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 397
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 399
    :cond_0
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    const p2, 0x7f14049d

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    const p2, 0x7f140324

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showYesNetUI$11$SignUpFragment(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 409
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    const p2, 0x7f14046d

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showYesNetUI$12$SignUpFragment(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 416
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    const p2, 0x7f14030e

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showYesNetUI$7$SignUpFragment(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 376
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    const p2, 0x7f1401c2

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showYesNetUI$8$SignUpFragment(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 383
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    const p2, 0x7f140205

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showYesNetUI$9$SignUpFragment(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 390
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    const p2, 0x7f140149

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$signUp$4$SignUpFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 289
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    sget-object p1, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_username:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->intentAuthSms(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1403c6

    .line 292
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->showSignUpDialog(Ljava/lang/String;Z)V

    .line 294
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_username:Ljava/lang/String;

    .line 295
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/login/SignUpFragment;->signup_pass:Ljava/lang/String;

    goto :goto_1

    .line 297
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->showSignUpDialog(Ljava/lang/String;Z)V

    .line 300
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->progress_dialog_signup:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 301
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->progress_dialog_signup:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->progress_dialog_signup:Landroid/app/ProgressDialog;

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 245
    new-instance p1, Landroid/content/Intent;

    const-string p2, "credentials_filter"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "username"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "password"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f140344

    .line 250
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 230
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 235
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 237
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->setMenuBackgroundImage(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 123
    new-instance p1, Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 129
    sget-object p3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0e01d1

    .line 130
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 133
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0e01d0

    goto :goto_0

    :cond_1
    const p3, 0x7f0e01cf

    :goto_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    :goto_1
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const p2, 0x7f0b05ce

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 140
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const p2, 0x7f0b05cf

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x7f0b05cd

    .line 144
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v1, 0x7f0b05d1

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$fEzGpf3WQFdZL63Xzw2nRCRTZOg;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$fEzGpf3WQFdZL63Xzw2nRCRTZOg;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b02bc

    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->name:Landroid/widget/EditText;

    .line 148
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const v1, 0x7f0b0370

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->surname:Landroid/widget/EditText;

    const v1, 0x7f0b0231

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->email:Landroid/widget/EditText;

    .line 151
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const v1, 0x7f0b04f1

    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->phone:Landroid/widget/EditText;

    .line 153
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->LINEATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    const v1, 0x7f0b06b8

    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->username:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 155
    iget-object v3, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->spaceCharFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v1, 0x7f0b04df

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    const v1, 0x7f0b0178

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->city:Landroid/widget/EditText;

    const v1, 0x7f0b01b3

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->countrySpinner:Landroid/widget/Spinner;

    .line 160
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->password:Landroid/widget/EditText;

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;

    invoke-direct {v2, p0, p3}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 171
    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$9VIw2XBUVAVcijnwiRDPwfl4Sv4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$9VIw2XBUVAVcijnwiRDPwfl4Sv4;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getOrientation()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->setMenuBackgroundImage(I)V

    .line 207
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->showYesNetUI()V

    const p2, 0x7f0b061f

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->termsAndConditions:Landroid/widget/TextView;

    .line 210
    new-instance p3, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ldb_n_NVi3Ctydqxp5z8xcE_DJ8;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ldb_n_NVi3Ctydqxp5z8xcE_DJ8;-><init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 213
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->showCountryList()V

    .line 216
    :cond_5
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->getCountry()V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 223
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 224
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoginListener(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginListener"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/SignUpFragment;->loginListener:Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;

    return-void
.end method
