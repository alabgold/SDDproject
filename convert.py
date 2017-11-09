from PIL import Image
import math

root_name = 'FratInfoPics/'
half = "_Half.png"
quart = "_Quarter.png"
png = ".png"
prof = "_Profile"
cal = "_Cal"
frats = ['Acacia', 'Alpha_Chi_Rho', 'Alpha_Epsilon_Pi', 'Alpha_Sigma_Phi', 'Chi_Phi', 'Delta_Kappa_Epsilon', 'Delta_Phi', 'Delta_Tau_Delta', 'Lambda_Chi_Alpha', 'Phi_Gamma_Delta', 'Phi_Iota_Alpha', 'Phi_Kappa_Theta', 'Phi_Mu_Delta', 'Pi_Kappa_Alpha', 'Pi_Kappa_Phi', 'Pi_Lambda_Phi', 'Psi_Upsilon', 'Sigma_Alpha_Epsilon', 'Sigma_Chi', 'Sigma_Phi_Epsilon', 'Theta_Chi', 'Theta_Xi', 'Zeta_Psi', 'RSE', 'Tau_Epsilon_Phi']
for frat in frats:
    
    if frat == 'Tau_Epsilon_Phi':
        fname_cal = root_name+frat+cal+png
        im2 = Image.open(fname_cal)
        w2,h2 = im2.size
        w2_2 = int(math.floor(w2*0.5))
        h2_2 = int(math.floor(h2*0.5))
        w2_4 = int(math.floor(w2*0.25))
        h2_4 = int(math.floor(h2*0.25))
        imcal_2 = im2.resize((w2_2,h2_2))
        imcal_4 = im2.resize((w2_4,h2_4)) 
        cal2name = root_name+frat+cal+half+png
        cal4name = root_name+frat+cal+quart+png  
        imcal_2.save(cal2name)
        imcal_4.save(cal4name)    
    
    elif frat == 'RSE':
        fname_prof = root_name+frat+prof+png
        im = Image.open(fname_prof)
        w,h = im.size
        w_2 = int(math.floor(w*0.5))
        h_2 = int(math.floor(h*0.5))
        w_4 = int(math.floor(w*0.25))
        h_4 = int(math.floor(h*0.25))
        improf_2 = im.resize((w_2,h_2))
        improf_4 = im.resize((w_4,h_4))  
        prof2name = root_name+frat+prof+half+png
        prof4name = root_name+frat+prof+quart+png
        improf_2.save(prof2name)
        improf_4.save(prof4name)        

    else:    
        fname_prof = root_name+frat+prof+png
        fname_cal = root_name+frat+cal+png
        im = Image.open(fname_prof)
        im2 = Image.open(fname_cal)
        w,h = im.size
        w2,h2 = im2.size
        
        w_2 = int(math.floor(w*0.5))
        h_2 = int(math.floor(h*0.5))
        w_4 = int(math.floor(w*0.25))
        h_4 = int(math.floor(h*0.25))
        w2_2 = int(math.floor(w2*0.5))
        h2_2 = int(math.floor(h2*0.5))
        w2_4 = int(math.floor(w2*0.25))
        h2_4 = int(math.floor(h2*0.25))
        
        improf_2 = im.resize((w_2,h_2))
        improf_4 = im.resize((w_4,h_4))
        imcal_2 = im2.resize((w2_2,h2_2))
        imcal_4 = im2.resize((w2_4,h2_4))
        
        prof2name = root_name+frat+prof+half+png
        prof4name = root_name+frat+prof+quart+png
        cal2name = root_name+frat+cal+half+png
        cal4name = root_name+frat+cal+quart+png
        
        improf_2.save(prof2name)
        improf_4.save(prof4name)
        imcal_2.save(cal2name)
        imcal_4.save(cal4name)
    