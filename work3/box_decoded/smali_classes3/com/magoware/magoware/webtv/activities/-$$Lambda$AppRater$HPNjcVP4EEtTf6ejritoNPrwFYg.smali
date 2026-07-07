.class public final synthetic Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$AppRater$HPNjcVP4EEtTf6ejritoNPrwFYg;->f$1:Landroid/app/Dialog;

    invoke-static {v0, v1, p1}, Lcom/magoware/magoware/webtv/activities/AppRater;->lambda$showRateDialog$0(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
