.class public Lichunqiu/get1t/crack1t/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field public button:Landroid/widget/Button;

.field public editText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lichunqiu/get1t/crack1t/MainActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lichunqiu/get1t/crack1t/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lichunqiu/get1t/crack1t/MainActivity;->editText:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lichunqiu/get1t/crack1t/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lichunqiu/get1t/crack1t/MainActivity;->button:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lichunqiu/get1t/crack1t/MainActivity;->button:Landroid/widget/Button;

    new-instance v1, Lichunqiu/get1t/crack1t/MainActivity$1;

    invoke-direct {v1, p0}, Lichunqiu/get1t/crack1t/MainActivity$1;-><init>(Lichunqiu/get1t/crack1t/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
