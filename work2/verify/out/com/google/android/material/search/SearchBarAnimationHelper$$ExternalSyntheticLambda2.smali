.class public final synthetic Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

.field public static final synthetic INSTANCE$1:Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;->INSTANCE$1:Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_e

    goto :goto_a

    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;->onAnimationStart()V

    return-void

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;->onAnimationEnd()V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
