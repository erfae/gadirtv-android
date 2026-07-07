.class public Lcom/magoware/magoware/webtv/firebase/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# static fields
.field static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "title",
            "body",
            "imageGif",
            "duration",
            "x1",
            "y1"
        }
    .end annotation

    .line 24
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0e01eb

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0b06a7

    .line 27
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b06a6

    .line 28
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b034d

    .line 29
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b03a3

    .line 30
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v4, ""

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const-string p2, "https://en.wikipedia.org/wiki/Cristiano_Ronaldo#/media/File:Cristiano_Ronaldo_2018.jpg"

    .line 44
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 48
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    .line 50
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 51
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p0, :cond_1

    if-ne p1, p2, :cond_1

    .line 54
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    const/16 p1, 0x31

    invoke-virtual {p0, p1, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    const/16 p5, 0x11

    if-ne p0, p2, :cond_2

    if-ne p1, p2, :cond_2

    .line 56
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p5, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_2
    const/4 p6, 0x2

    if-ne p0, p6, :cond_3

    if-ne p1, p2, :cond_3

    .line 58
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    const/16 p1, 0x51

    invoke-virtual {p0, p1, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 60
    :cond_3
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p5, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 63
    :goto_0
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 64
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 65
    sget-object p0, Lcom/magoware/magoware/webtv/firebase/MyToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 68
    new-instance p0, Lcom/magoware/magoware/webtv/firebase/MyToast$1;

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/firebase/MyToast$1;-><init>(JJ)V

    .line 78
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/firebase/MyToast$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method
