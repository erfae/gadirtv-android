.class public Lcom/magoware/magoware/webtv/login/LoginFirstStep;
.super Lcom/magoware/magoware/webtv/login/LoginFragmentParent;
.source "LoginFirstStep.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LoginFirstStep"


# instance fields
.field applicationModel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b00c4
    .end annotation
.end field

.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0374
    .end annotation
.end field

.field magoText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b03c2
    .end annotation
.end field

.field nextButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04a8
    .end annotation
.end field

.field serverUrl:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05aa
    .end annotation
.end field

.field toText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b066b
    .end annotation
.end field

.field versionText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06bc
    .end annotation
.end field

.field welcomeText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0701
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;-><init>()V

    return-void
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlString"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)Lcom/magoware/magoware/webtv/login/LoginFirstStep;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginListener"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;-><init>()V

    .line 58
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->setLoginListener(Lcom/magoware/magoware/webtv/network/mvvm/models/LoginListener;)V

    return-object v0
.end method


# virtual methods
.method protected checkConnection()V
    .locals 3

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Background Connection Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v2, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;-><init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected customizeViewForMagoware()V
    .locals 0

    return-void
.end method

.method protected customizeViewForTibo()V
    .locals 0

    return-void
.end method

.method protected customizeViewForYESNET()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const p3, 0x7f0e0136

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method onNextClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0b04a8
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->checkConnection()V

    :goto_0
    return-void
.end method


.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->versionText:Landroid/widget/TextView;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const v0, 0x7f140477

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    const-string v1, " "

    aput-object v1, p2, v0

    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const-string v0, "%s%s%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->checkConnection()V

    return-void
.end method
